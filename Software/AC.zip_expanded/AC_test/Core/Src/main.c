/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * <h2><center>&copy; Copyright (c) 2020 STMicroelectronics.
  * All rights reserved.</center></h2>
  *
  * This software component is licensed by ST under BSD 3-Clause license,
  * the "License"; You may not use this file except in compliance with the
  * License. You may obtain a copy of the License at:
  *                        opensource.org/licenses/BSD-3-Clause
  *
  ******************************************************************************
  */
#define ARM_MATH_CM4

/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include "arm_math.h"

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */
typedef struct {
	float32_t I1_Low;
	float32_t I2_Low;
	float32_t I_High;
	float32_t Tp;
} ADC_SingleEnded;

typedef struct {
	float32_t gain_I1;
	float32_t gain_I2;
	float32_t gain_IHigh;
	float32_t gain_Tp;
} gain_ADC1;

typedef struct {
	float32_t V1_Low;
	float32_t V2_Low;
	float32_t V_High;
} ADC_Differential;

typedef struct {
	float32_t gain_V1;
	float32_t gain_V2;
	float32_t gain_VHigh;
} gain_ADC2;

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define GAIN_CURRENT_SENSOR  0.0009766       //  [(raw_value/4096)*3.3V * (40A/3.3V)] * 1.000.000
#define GAIN_AC_VOLTAGE  515625
#define GAIN_DC_VOLTAGE	 96680
// #define GAIN_TP =
#define DIVIDE1M 1000000
#define PWM_RESOLUTION 320
#define LOW_DUTY 32
#define HIGH_DUTY 288
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
ADC_HandleTypeDef hadc1;
ADC_HandleTypeDef hadc2;
DMA_HandleTypeDef hdma_adc1;
DMA_HandleTypeDef hdma_adc2;

HRTIM_HandleTypeDef hhrtim1;

TIM_HandleTypeDef htim3;

UART_HandleTypeDef huart2;

/* USER CODE BEGIN PV */
int i=0;
float32_t SineTable[200] = {0.028269683170316,0.056511467576382,0.084697481986663,0.112799910207874,0.140791018536208,0.168643183127152,0.196328917256888,0.223820898448369,0.251091995435306,0.278115294937453,0.304864128220762,0.33131209741621,0.357433101571303,0.383201362408565,0.408591449765592,0.433578306691544,0.458137274175334,0.482244115481097,0.505875040066918,0.529006727063226,0.551616348287679,0.573681590773821,0.595180678791287,0.61609239533582,0.636396103067893,0.65607176467927,0.675099962667414,0.69346191849821,0.711139511138121,0.728115294937453,0.744372516847106,0.759895132951814,0.774667824303549,0.788676012039477,0.801905871769531,0.814344347219418,0.825979163115583,0.836798837299426,0.846792692058803,0.855950864665638,0.864264317109249,0.871724845015768,0.878325085744873,0.88405852565582,0.888919506535624,0.89290323118303,0.896005768142772,0.898224055585444,0.899555904329158,0.9,0.899555904329158,0.898224055585444,0.896005768142772,0.89290323118303,0.888919506535624,0.88405852565582,0.878325085744873,0.871724845015768,0.864264317109249,0.855950864665638,0.846792692058803,0.836798837299426,0.825979163115583,0.814344347219418,0.801905871769531,0.788676012039477,0.774667824303549,0.759895132951813,0.744372516847106,0.728115294937453,0.711139511138121,0.69346191849821,0.675099962667413,0.65607176467927,0.636396103067893,0.61609239533582,0.595180678791287,0.573681590773821,0.551616348287679,0.529006727063226,0.505875040066917,0.482244115481097,0.458137274175334,0.433578306691544,0.408591449765592,0.383201362408565,0.357433101571303,0.33131209741621,0.304864128220762,0.278115294937452,0.251091995435306,0.223820898448369,0.196328917256888,0.168643183127152,0.140791018536207,0.112799910207874,0.084697481986663,0.056511467576382,0.028269683170316,-2.89462076941795E-016,0.028269683170316,0.056511467576382,0.084697481986663,0.112799910207874,0.140791018536208,0.168643183127152,0.196328917256888,0.223820898448369,0.251091995435306,0.278115294937453,0.304864128220762,0.33131209741621,0.357433101571303,0.383201362408565,0.408591449765592,0.433578306691544,0.458137274175334,0.482244115481097,0.505875040066918,0.529006727063226,0.551616348287679,0.573681590773821,0.595180678791287,0.61609239533582,0.636396103067893,0.65607176467927,0.675099962667414,0.69346191849821,0.711139511138121,0.728115294937453,0.744372516847106,0.759895132951814,0.774667824303549,0.788676012039477,0.801905871769531,0.814344347219418,0.825979163115583,0.836798837299426,0.846792692058803,0.855950864665638,0.864264317109249,0.871724845015768,0.878325085744873,0.88405852565582,0.888919506535624,0.89290323118303,0.896005768142772,0.898224055585444,0.899555904329158,0.9,0.899555904329158,0.898224055585444,0.896005768142772,0.89290323118303,0.888919506535624,0.88405852565582,0.878325085744873,0.871724845015768,0.864264317109249,0.855950864665638,0.846792692058803,0.836798837299426,0.825979163115583,0.814344347219418,0.801905871769531,0.788676012039477,0.774667824303549,0.759895132951813,0.744372516847106,0.728115294937453,0.711139511138121,0.69346191849821,0.675099962667413,0.65607176467927,0.636396103067893,0.61609239533582,0.595180678791287,0.573681590773821,0.551616348287679,0.529006727063226,0.505875040066917,0.482244115481097,0.458137274175334,0.433578306691544,0.408591449765592,0.383201362408565,0.357433101571303,0.33131209741621,0.304864128220762,0.278115294937452,0.251091995435306,0.223820898448369,0.196328917256888,0.168643183127152,0.140791018536207,0.112799910207874,0.084697481986663,0.056511467576382,0.028269683170316,0};
							//THE SINE TABLE CONTAINS VALUE BETWEEN 0 and 0.9. IT IS |sin(x)| FOR X € [0,2pi] SO IT CONTAINS ONLY POSITIVE VALUES
							//THE NEGATIVE PART OF THE SIGNAL COMES FROM THE INVERSION OF TIMERB WITH RESPECT TO TIMER A IN HRTIM CONFIG. SEE .IOC FILE TO SEE THE CONFIG.
float32_t ref;
float32_t refB;
float32_t Vdc = 20; 		//TO BE REPLACED WITH ADC SENSING
float32_t error_pidA;
float32_t error_pidB;
float32_t rslt_pidA;
float32_t rslt_pidB;
float32_t Kpgain = -0.00000235;		//PID Gains are determined through a simulink simulation of the system.
float32_t Kigain = -0.117;			//THIS PID GAINS ARE FROM INTERLEAVED BUCK MODE.
float32_t Kdgain = 0;
uint32_t valuesADC1[4];
float32_t convertADC1[4];
uint32_t valuesADC2[3];
float32_t convertADC2[3];
float32_t raw_offsetADC1[4];
float32_t raw_offsetADC2[3];
arm_pid_instance_f32 PID_A;
arm_pid_instance_f32 PID_B;
float32_t ValuesADC1[4];
float32_t ValuesADC2[3];
float32_t GainADC1[4];
float32_t GainADC2[3];
float32_t offsetADC1[4] = {1460, 1650, 1700, 0};
float32_t offsetADC2[3] = {1990, 1980, 1980};
uint16_t dutyA= 80;
uint16_t dutyB= 80;
float32_t pwmA=32;
float32_t pwmB=32;


/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_DMA_Init(void);
static void MX_USART2_UART_Init(void);
static void MX_ADC1_Init(void);
static void MX_ADC2_Init(void);
static void MX_HRTIM1_Init(void);
static void MX_TIM3_Init(void);
/* USER CODE BEGIN PFP */
/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */
  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_DMA_Init();
  MX_USART2_UART_Init();
  MX_ADC1_Init();
  MX_ADC2_Init();
  MX_HRTIM1_Init();
  MX_TIM3_Init();
  /* USER CODE BEGIN 2 */

  GainADC1[0] =0.009766;
  GainADC1[1] =0.009766;
  GainADC1[2] =-0.009766*2.794;
  GainADC1[3] =0.1*0.543;

  GainADC2[0] =-0.05156*1.2931;
  GainADC2[1] =-0.05156*1.2931;		//1.2931 is the experimental gain multiplier found during calibration. Theoritical values must be checked.
  GainADC2[2] =0.09668;



  PID_A.Kp=Kpgain;
  PID_A.Ki=Kigain;
  PID_A.Kd=Kdgain;
  PID_B.Kp=Kpgain;
  PID_B.Ki=Kigain;
  PID_B.Kd=Kdgain;
  arm_pid_init_f32(&PID_A,1);
  arm_pid_init_f32(&PID_B,1);
  HAL_HRTIM_WaveformCountStart(&hhrtim1 , HRTIM_TIMERID_MASTER | HRTIM_TIMERID_TIMER_A | HRTIM_TIMERID_TIMER_B); //Launch simultaneously HRTIM Master timer, Timer A, and Timer B
  HAL_HRTIM_WaveformOutputStart(&hhrtim1 , HRTIM_OUTPUT_TA1 | HRTIM_OUTPUT_TA2 ); //Once timers launched, output are released simultaneously.
  HAL_HRTIM_UpdateEnable(&hhrtim1, HRTIM_TIMERUPDATE_A | HRTIM_TIMERUPDATE_B);	//High resolution timer self-update from input registers on new master period.
 /* HAL_GPIO_TogglePin(GPIOA, GPIO_PIN_0); */			//IMPORTANT GROUND TO NEUTRAL CONNECTION MUST BE DISABLED in AC MODE!

  HAL_TIM_Base_Start_IT(&htim3);		//STARTING THE INTERUPT ROUTINE AFTER ALL INITIALISATIONS
  	  	  	  	  	  	  	  	  	  	//THE INTERUPT ROUTINE IS IN USER CODE SECTION 4


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1)
  {
	  HAL_ADC_Start_DMA(&hadc1, valuesADC1, 4);
	  HAL_ADC_Stop_DMA(&hadc1);
	  HAL_ADC_Start_DMA(&hadc2, valuesADC2, 3);
	  HAL_ADC_Stop_DMA(&hadc2);
	  convertADC1[0] = (float32_t)valuesADC1[0];
	  convertADC1[1] = (float32_t)valuesADC1[1];
	  convertADC1[2] = (float32_t)valuesADC1[2];
	  convertADC1[3] = (float32_t)valuesADC1[3];
	  convertADC2[0] = (float32_t)valuesADC2[0];
	  convertADC2[1] = (float32_t)valuesADC2[1];
	  convertADC2[2] = (float32_t)valuesADC2[2];
	  arm_sub_f32(convertADC1, offsetADC1, raw_offsetADC1, 4);
	  arm_sub_f32(convertADC2, offsetADC2, raw_offsetADC2, 3);
	  arm_mult_f32(raw_offsetADC1, GainADC1, ValuesADC1, 4);
	  arm_mult_f32(raw_offsetADC2, GainADC2, ValuesADC2, 3);

	  //refB=-ref;

	  pwmA = 320-(PWM_RESOLUTION*ref/ValuesADC2[2]);  //PID OUTPUT CONDITIONNING
	  pwmB = 320-(PWM_RESOLUTION*ref/ValuesADC2[2]);

	  if (i<100)
	  {
		  arm_sub_f32(&ref, &ValuesADC2[0], &error_pidA,1);	 		//CALCULATING THE ERROR BASED ON THE REFERENCE FOR LEGA
		  rslt_pidA = arm_pid_f32(&PID_A, 0.01*error_pidA); 		//PID CALCULATIONS FOR LEGA
		  if (rslt_pidA<0)
		  {
			  rslt_pidA=-rslt_pidA;

		  }
//		  pwmA = 320-(PWM_RESOLUTION*rslt_pidA);

		  if (pwmA > HIGH_DUTY)										//SATURATION CONDITIONS TO AVOID DIVERGENCE.
		  {
			  dutyA = HIGH_DUTY;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X0, HRTIM_COMPAREUNIT_1, dutyA);
		  }
		  else if (pwmA < 3)
		  {
			  dutyA = 3;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X0, HRTIM_COMPAREUNIT_1, dutyA);
		  }
		  else
		  {
			  dutyA = (uint16_t)pwmA;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X0, HRTIM_COMPAREUNIT_1, dutyA);
		  }

	  }

	  if (i>100)
	  {
		  arm_sub_f32(&ref, &ValuesADC2[1], &error_pidB,1);	 	//CALCULATING THE ERROR BASED ON THE REFERENCE FOR LEGB
		  rslt_pidB = arm_pid_f32(&PID_B, 0.01*error_pidB);		//PID CALCULATIONS FOR LEGB
		  if (rslt_pidB<0)
			  {
				  rslt_pidB=-rslt_pidB;

			  }
//		  pwmB = 320-(PWM_RESOLUTION*rslt_pidB);

		  if (pwmB > HIGH_DUTY)
		  {
			  dutyB = HIGH_DUTY;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X1, HRTIM_COMPAREUNIT_1, dutyB);
		  }
		  else if (pwmB < 3)
		  {
			  dutyB = 3;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X1, HRTIM_COMPAREUNIT_1, dutyB);
		  }
		  else
		  {
			  dutyB = (uint16_t)pwmB;
			  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X1, HRTIM_COMPAREUNIT_1, dutyB);
		  }

	  }
//	HAL_HRTIM_SoftwareUpdate(&hhrtim1, HRTIM_TIMERUPDATE_A | HRTIM_TIMERUPDATE_B);

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLMUL = RCC_PLL_MUL16;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_HRTIM1|RCC_PERIPHCLK_ADC12;
  PeriphClkInit.Adc12ClockSelection = RCC_ADC12PLLCLK_DIV1;
  PeriphClkInit.Hrtim1ClockSelection = RCC_HRTIM1CLK_HCLK;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief ADC1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC1_Init(void)
{

  /* USER CODE BEGIN ADC1_Init 0 */

  /* USER CODE END ADC1_Init 0 */

  ADC_MultiModeTypeDef multimode = {0};
  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC1_Init 1 */

  /* USER CODE END ADC1_Init 1 */
  /** Common config
  */
  hadc1.Instance = ADC1;
  hadc1.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc1.Init.Resolution = ADC_RESOLUTION_12B;
  hadc1.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc1.Init.ContinuousConvMode = DISABLE;
  hadc1.Init.DiscontinuousConvMode = DISABLE;
  hadc1.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc1.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc1.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc1.Init.NbrOfConversion = 4;
  hadc1.Init.DMAContinuousRequests = DISABLE;
  hadc1.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc1.Init.LowPowerAutoWait = DISABLE;
  hadc1.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  if (HAL_ADC_Init(&hadc1) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure the ADC multi-mode
  */
  multimode.Mode = ADC_MODE_INDEPENDENT;
  if (HAL_ADCEx_MultiModeConfigChannel(&hadc1, &multimode) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_6;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SingleDiff = ADC_SINGLE_ENDED;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_7;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_8;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_9;
  sConfig.Rank = ADC_REGULAR_RANK_4;
  if (HAL_ADC_ConfigChannel(&hadc1, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC1_Init 2 */

  /* USER CODE END ADC1_Init 2 */

}

/**
  * @brief ADC2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_ADC2_Init(void)
{

  /* USER CODE BEGIN ADC2_Init 0 */

  /* USER CODE END ADC2_Init 0 */

  ADC_ChannelConfTypeDef sConfig = {0};

  /* USER CODE BEGIN ADC2_Init 1 */

  /* USER CODE END ADC2_Init 1 */
  /** Common config
  */
  hadc2.Instance = ADC2;
  hadc2.Init.ClockPrescaler = ADC_CLOCK_ASYNC_DIV1;
  hadc2.Init.Resolution = ADC_RESOLUTION_12B;
  hadc2.Init.ScanConvMode = ADC_SCAN_ENABLE;
  hadc2.Init.ContinuousConvMode = DISABLE;
  hadc2.Init.DiscontinuousConvMode = DISABLE;
  hadc2.Init.ExternalTrigConvEdge = ADC_EXTERNALTRIGCONVEDGE_NONE;
  hadc2.Init.ExternalTrigConv = ADC_SOFTWARE_START;
  hadc2.Init.DataAlign = ADC_DATAALIGN_RIGHT;
  hadc2.Init.NbrOfConversion = 3;
  hadc2.Init.DMAContinuousRequests = DISABLE;
  hadc2.Init.EOCSelection = ADC_EOC_SINGLE_CONV;
  hadc2.Init.LowPowerAutoWait = DISABLE;
  hadc2.Init.Overrun = ADC_OVR_DATA_OVERWRITTEN;
  if (HAL_ADC_Init(&hadc2) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_1;
  sConfig.Rank = ADC_REGULAR_RANK_1;
  sConfig.SingleDiff = ADC_DIFFERENTIAL_ENDED;
  sConfig.SamplingTime = ADC_SAMPLETIME_1CYCLE_5;
  sConfig.OffsetNumber = ADC_OFFSET_NONE;
  sConfig.Offset = 0;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_3;
  sConfig.Rank = ADC_REGULAR_RANK_2;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /** Configure Regular Channel
  */
  sConfig.Channel = ADC_CHANNEL_11;
  sConfig.Rank = ADC_REGULAR_RANK_3;
  if (HAL_ADC_ConfigChannel(&hadc2, &sConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN ADC2_Init 2 */

  /* USER CODE END ADC2_Init 2 */

}

/**
  * @brief HRTIM1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_HRTIM1_Init(void)
{

  /* USER CODE BEGIN HRTIM1_Init 0 */

  /* USER CODE END HRTIM1_Init 0 */

  HRTIM_TimeBaseCfgTypeDef pTimeBaseCfg = {0};
  HRTIM_TimerCfgTypeDef pTimerCfg = {0};
  HRTIM_CompareCfgTypeDef pCompareCfg = {0};
  HRTIM_DeadTimeCfgTypeDef pDeadTimeCfg = {0};
  HRTIM_OutputCfgTypeDef pOutputCfg = {0};

  /* USER CODE BEGIN HRTIM1_Init 1 */

 //Define the duty cycle variable duty must be below comprised between 0 and 320 in the actual configuration.

  /* USER CODE END HRTIM1_Init 1 */
  hhrtim1.Instance = HRTIM1;
  hhrtim1.Init.HRTIMInterruptResquests = HRTIM_IT_NONE;
  hhrtim1.Init.SyncOptions = HRTIM_SYNCOPTION_NONE;
  if (HAL_HRTIM_Init(&hhrtim1) != HAL_OK)
  {
    Error_Handler();
  }
  pTimeBaseCfg.Period = 320;
  pTimeBaseCfg.RepetitionCounter = 0x00;
  pTimeBaseCfg.PrescalerRatio = HRTIM_PRESCALERRATIO_DIV1;
  pTimeBaseCfg.Mode = HRTIM_MODE_CONTINUOUS;
  if (HAL_HRTIM_TimeBaseConfig(&hhrtim1, HRTIM_TIMERINDEX_MASTER, &pTimeBaseCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pTimerCfg.InterruptRequests = HRTIM_MASTER_IT_NONE;
  pTimerCfg.DMARequests = HRTIM_MASTER_DMA_NONE;
  pTimerCfg.DMASrcAddress = 0x0000;
  pTimerCfg.DMADstAddress = 0x0000;
  pTimerCfg.DMASize = 0x1;
  pTimerCfg.HalfModeEnable = HRTIM_HALFMODE_DISABLED;
  pTimerCfg.StartOnSync = HRTIM_SYNCSTART_DISABLED;
  pTimerCfg.ResetOnSync = HRTIM_SYNCRESET_DISABLED;
  pTimerCfg.DACSynchro = HRTIM_DACSYNC_NONE;
  pTimerCfg.PreloadEnable = HRTIM_PRELOAD_DISABLED;
  pTimerCfg.UpdateGating = HRTIM_UPDATEGATING_INDEPENDENT;
  pTimerCfg.BurstMode = HRTIM_TIMERBURSTMODE_MAINTAINCLOCK;
  pTimerCfg.RepetitionUpdate = HRTIM_UPDATEONREPETITION_DISABLED;
  if (HAL_HRTIM_WaveformTimerConfig(&hhrtim1, HRTIM_TIMERINDEX_MASTER, &pTimerCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pCompareCfg.CompareValue = 160;
  if (HAL_HRTIM_WaveformCompareConfig(&hhrtim1, HRTIM_TIMERINDEX_MASTER, HRTIM_COMPAREUNIT_2, &pCompareCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_TimeBaseConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, &pTimeBaseCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pTimerCfg.InterruptRequests = HRTIM_TIM_IT_NONE;
  pTimerCfg.DMARequests = HRTIM_TIM_DMA_NONE;
  pTimerCfg.DMASrcAddress = 0x0;
  pTimerCfg.DMADstAddress = 0x0;
  pTimerCfg.DMASize = 0x1;
  pTimerCfg.PreloadEnable = HRTIM_PRELOAD_ENABLED;
  pTimerCfg.RepetitionUpdate = HRTIM_UPDATEONREPETITION_ENABLED;
  pTimerCfg.PushPull = HRTIM_TIMPUSHPULLMODE_DISABLED;
  pTimerCfg.FaultEnable = HRTIM_TIMFAULTENABLE_NONE;
  pTimerCfg.FaultLock = HRTIM_TIMFAULTLOCK_READWRITE;
  pTimerCfg.DeadTimeInsertion = HRTIM_TIMDEADTIMEINSERTION_ENABLED;
  pTimerCfg.DelayedProtectionMode = HRTIM_TIMER_A_B_C_DELAYEDPROTECTION_DISABLED;
  pTimerCfg.UpdateTrigger = HRTIM_TIMUPDATETRIGGER_NONE;
  pTimerCfg.ResetTrigger = HRTIM_TIMRESETTRIGGER_MASTER_PER;
  pTimerCfg.ResetUpdate = HRTIM_TIMUPDATEONRESET_DISABLED;
  if (HAL_HRTIM_WaveformTimerConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, &pTimerCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pTimerCfg.DMASrcAddress = 0x0;
  pTimerCfg.DMADstAddress = 0x0;
  pTimerCfg.DMASize = 0x1;
  if (HAL_HRTIM_WaveformTimerConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, &pTimerCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pCompareCfg.CompareValue = 80;
  if (HAL_HRTIM_WaveformCompareConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_COMPAREUNIT_1, &pCompareCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pDeadTimeCfg.Prescaler = HRTIM_TIMDEADTIME_PRESCALERRATIO_MUL8;
  pDeadTimeCfg.RisingValue = 10;
  pDeadTimeCfg.RisingSign = HRTIM_TIMDEADTIME_RISINGSIGN_POSITIVE;
  pDeadTimeCfg.RisingLock = HRTIM_TIMDEADTIME_RISINGLOCK_WRITE;
  pDeadTimeCfg.RisingSignLock = HRTIM_TIMDEADTIME_RISINGSIGNLOCK_WRITE;
  pDeadTimeCfg.FallingValue = 10;
  pDeadTimeCfg.FallingSign = HRTIM_TIMDEADTIME_FALLINGSIGN_POSITIVE;
  pDeadTimeCfg.FallingLock = HRTIM_TIMDEADTIME_FALLINGLOCK_WRITE;
  pDeadTimeCfg.FallingSignLock = HRTIM_TIMDEADTIME_FALLINGSIGNLOCK_WRITE;
  if (HAL_HRTIM_DeadTimeConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, &pDeadTimeCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_DeadTimeConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, &pDeadTimeCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pOutputCfg.Polarity = HRTIM_OUTPUTPOLARITY_HIGH;
  pOutputCfg.SetSource = HRTIM_OUTPUTSET_TIMCMP1;
  pOutputCfg.ResetSource = HRTIM_OUTPUTRESET_TIMPER;
  pOutputCfg.IdleMode = HRTIM_OUTPUTIDLEMODE_NONE;
  pOutputCfg.IdleLevel = HRTIM_OUTPUTIDLELEVEL_INACTIVE;
  pOutputCfg.FaultLevel = HRTIM_OUTPUTFAULTLEVEL_NONE;
  pOutputCfg.ChopperModeEnable = HRTIM_OUTPUTCHOPPERMODE_DISABLED;
  pOutputCfg.BurstModeEntryDelayed = HRTIM_OUTPUTBURSTMODEENTRY_REGULAR;
  if (HAL_HRTIM_WaveformOutputConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_OUTPUT_TA1, &pOutputCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_WaveformOutputConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, HRTIM_OUTPUT_TB1, &pOutputCfg) != HAL_OK)
  {
    Error_Handler();
  }
  pOutputCfg.SetSource = HRTIM_OUTPUTSET_NONE;
  pOutputCfg.ResetSource = HRTIM_OUTPUTRESET_TIMCMP1;
  if (HAL_HRTIM_WaveformOutputConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_A, HRTIM_OUTPUT_TA2, &pOutputCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_WaveformOutputConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, HRTIM_OUTPUT_TB2, &pOutputCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_TimeBaseConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, &pTimeBaseCfg) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_HRTIM_WaveformCompareConfig(&hhrtim1, HRTIM_TIMERINDEX_TIMER_B, HRTIM_COMPAREUNIT_1, &pCompareCfg) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN HRTIM1_Init 2 */

  /* USER CODE END HRTIM1_Init 2 */
  HAL_HRTIM_MspPostInit(&hhrtim1);

}

/**
  * @brief TIM3 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM3_Init(void)
{

  /* USER CODE BEGIN TIM3_Init 0 */

  /* USER CODE END TIM3_Init 0 */

  TIM_ClockConfigTypeDef sClockSourceConfig = {0};
  TIM_MasterConfigTypeDef sMasterConfig = {0};

  /* USER CODE BEGIN TIM3_Init 1 */

  /* USER CODE END TIM3_Init 1 */
  htim3.Instance = TIM3;
  htim3.Init.Prescaler = 0;
  htim3.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim3.Init.Period = 6400;
  htim3.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim3.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim3) != HAL_OK)
  {
    Error_Handler();
  }
  sClockSourceConfig.ClockSource = TIM_CLOCKSOURCE_INTERNAL;
  if (HAL_TIM_ConfigClockSource(&htim3, &sClockSourceConfig) != HAL_OK)
  {
    Error_Handler();
  }
  sMasterConfig.MasterOutputTrigger = TIM_TRGO_RESET;
  sMasterConfig.MasterSlaveMode = TIM_MASTERSLAVEMODE_DISABLE;
  if (HAL_TIMEx_MasterConfigSynchronization(&htim3, &sMasterConfig) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM3_Init 2 */

  /* USER CODE END TIM3_Init 2 */

}

/**
  * @brief USART2 Initialization Function
  * @param None
  * @retval None
  */
static void MX_USART2_UART_Init(void)
{

  /* USER CODE BEGIN USART2_Init 0 */

  /* USER CODE END USART2_Init 0 */

  /* USER CODE BEGIN USART2_Init 1 */

  /* USER CODE END USART2_Init 1 */
  huart2.Instance = USART2;
  huart2.Init.BaudRate = 38400;
  huart2.Init.WordLength = UART_WORDLENGTH_8B;
  huart2.Init.StopBits = UART_STOPBITS_1;
  huart2.Init.Parity = UART_PARITY_NONE;
  huart2.Init.Mode = UART_MODE_TX_RX;
  huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  huart2.Init.OverSampling = UART_OVERSAMPLING_16;
  huart2.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  huart2.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&huart2) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN USART2_Init 2 */

  /* USER CODE END USART2_Init 2 */

}

/**
  * Enable DMA controller clock
  */
static void MX_DMA_Init(void)
{

  /* DMA controller clock enable */
  __HAL_RCC_DMA1_CLK_ENABLE();

  /* DMA interrupt init */
  /* DMA1_Channel1_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel1_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel1_IRQn);
  /* DMA1_Channel2_IRQn interrupt configuration */
  HAL_NVIC_SetPriority(DMA1_Channel2_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(DMA1_Channel2_IRQn);

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(GPIOA, GPIO_PIN_0, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : PA0 */
  GPIO_InitStruct.Pin = GPIO_PIN_0;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);

}

/* USER CODE BEGIN 4 */
void  HAL_TIM_PeriodElapsedCallback(TIM_HandleTypeDef *htim)		//INTERUPT ROUTINE RUNNING AT 10kHz UPDATING THE REFERENCE BASED ON THE LOOKUP TABLE
 {

Vdc = ValuesADC2[2];
ref= Vdc * SineTable[i]; 	//THE REFERENCE VALUE IS UPDATED AT 10KHz FROM THE LOOOKUP TABLE OF |sin(x)| with x€[0,2pi]
i++;						//UPDATE VALUE IS INCREMENTED

if (i==100)					//FOR x = pi WE SWITCH THE OUTPUT FROM TIMER A TO TIMER B, AND WE KILL TIMER A
							//TIMER B IS INVERTED WITH RESPECT TO TIMER A. THIS GENERATE THE NEGATIVE PART OF THE OUTPUT SIGNAL.
{
	HAL_HRTIM_WaveformOutputStop(&hhrtim1, HRTIM_OUTPUT_TA1 | HRTIM_OUTPUT_TA2);
	  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X0, HRTIM_COMPAREUNIT_1, 0);
	HAL_HRTIM_WaveformOutputStart(&hhrtim1 , HRTIM_OUTPUT_TB1 | HRTIM_OUTPUT_TB2 |HRTIM_OUTPUT_TA2);
}
if (i==200)					//AT THE END OF THE LOOKUP TABLE, WE SWITCH BACK TO TIMER A AND WE KILL TIMER B
{
	HAL_HRTIM_WaveformOutputStop(&hhrtim1, HRTIM_OUTPUT_TB1 | HRTIM_OUTPUT_TB2);
	  __HAL_HRTIM_SETCOMPARE(&hhrtim1, 0X1, HRTIM_COMPAREUNIT_1, 0);
	HAL_HRTIM_WaveformOutputStart(&hhrtim1 , HRTIM_OUTPUT_TA1 | HRTIM_OUTPUT_TA2 | HRTIM_OUTPUT_TB2);
	i =0;
}

 }

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     tex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/