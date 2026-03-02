DROP TABLE "Employments";

CREATE TABLE "Employments" (
	"employmentsID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"employmentInsuranceIndustryCode"	VARCHAR(10)		NULL,
	"employmentInsuranceIndustryName"	VARCHAR(100)		NULL,
	"workersCompRegularEmployeeCount"	INT		NULL,
	"employmentInsuranceRegularEmployeeCount"	INT		NULL,
	"workersCompBusinessType"	VARCHAR(50)		NULL,
	"employmentInsuranceBusinessType"	VARCHAR(50)		NULL,
	"insuranceType"	VARCHAR(30)		NULL,
	"workplaceManagementNumber"	VARCHAR(20)		NULL,
	"workersCompEstablishmentDate"	DATE		NULL,
	"employmentEstablishmentDate"	DATE		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

DROP TABLE "raw_OnlineSales";

CREATE TABLE "raw_OnlineSales" (
	"Key"	VARCHAR(255)		NOT NULL,
	"통신판매번호"	VARCHAR(255)		NULL,
	"신고기관명"	VARCHAR(255)		NULL,
	"상호"	VARCHAR(255)		NULL,
	"사업자등록번호"	VARCHAR(255)		NULL,
	"법인여부"	VARCHAR(255)		NULL,
	"대표자명"	VARCHAR(255)		NULL,
	"전화번호"	VARCHAR(255)		NULL,
	"전자우편"	VARCHAR(255)		NULL,
	"신고일자"	VARCHAR(255)		NULL,
	"사업장소재지"	VARCHAR(255)		NULL,
	"사업장소재지(도로명)"	VARCHAR(255)		NULL,
	"업소상태"	VARCHAR(255)		NULL,
	"신고기관 대표연락처"	VARCHAR(255)		NULL,
	"판매방식"	VARCHAR(255)		NULL,
	"취급품목"	VARCHAR(255)		NULL,
	"인터넷도메인"	VARCHAR(255)		NULL,
	"호스트서버소재지"	VARCHAR(255)		NULL,
	"CreatedAt"	VARCHAR(255)		NULL,
	"UpdatedAt"	VARCHAR(255)		NULL
);

COMMENT ON COLUMN "raw_OnlineSales"."신고기관명" IS 'EX: 강원특별자치도 태백시';

COMMENT ON COLUMN "raw_OnlineSales"."전자우편" IS '이메일';

COMMENT ON COLUMN "raw_OnlineSales"."사업장소재지" IS '지번주소';

COMMENT ON COLUMN "raw_OnlineSales"."업소상태" IS '정상/휴업/폐업';

DROP TABLE "Users";

CREATE TABLE "Users" (
	"userID"	INT		NOT NULL,
	"name"	VARCHAR(20)		NULL,
	"phoneNumber"	VARCHAR(20)		NULL,
	"email"	VARCHAR(100)		NULL,
	"validityPeriod"	DATE		NULL,
	"password"	VARCHAR(255)		NULL,
	"isActive"	BOOLEAN		NULL,
	"accessTime"	DATETIME		NULL,
	"accessIp"	VARCHAR(45)		NULL,
	"accessDevice"	VARCHAR(100)		NULL,
	"createdAt"	DATETIME		NULL,
	"updatedAt"	DATETIME		NULL
);

DROP TABLE "NationalPensions";

CREATE TABLE "NationalPensions" (
	"nationalPensionID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"businessIndustryCode"	VARCHAR(10)		NULL,
	"businessIndustryName"	VARCHAR(100)		NULL,
	"employeeCount"	INT		NULL,
	"averageSalary"	DECIMAL(15,2)		NULL,
	"applicationDate"	DATE		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "NationalPensions"."averageSalary" IS '올해기준만 계산해서 넣어주기?';

DROP TABLE "raw_Employments";

CREATE TABLE "raw_Employments" (
	"Key"	VARCHAR(255)		NOT NULL,
	"보험구분"	VARCHAR(255)		NULL,
	"사업장명"	VARCHAR(255)		NOT NULL,
	"사업장 우편번호"	VARCHAR(255)		NOT NULL,
	"사업장 주소"	VARCHAR(255)		NOT NULL,
	"사업자등록번호"	VARCHAR(255)		NOT NULL,
	"사업장관리번호"	VARCHAR(255)		NOT NULL,
	"고용보험 업종코드"	VARCHAR(255)		NULL,
	"고용보험 업종명"	VARCHAR(255)		NULL,
	"산재보험 성립일자"	VARCHAR(255)		NULL,
	"고용보험 성립일자"	VARCHAR(255)		NULL,
	"산재보험 상시 근로자수"	VARCHAR(255)		NULL,
	"고용보험 상시 근로자수"	VARCHAR(255)		NULL,
	"산재보험 사업구분"	VARCHAR(255)		NULL,
	"고용보험 사업구분"	VARCHAR(255)		NULL,
	"CreatedAt"	VARCHAR(255)		NULL,
	"UpdatedAt"	VARCHAR(255)		NULL
);

COMMENT ON COLUMN "raw_Employments"."보험구분" IS '고용보험 / 산재보험';

COMMENT ON COLUMN "raw_Employments"."사업장 주소" IS '도로명
(지번은 없음)';

DROP TABLE "Businesses";

CREATE TABLE "Businesses" (
	"businessID"	INT		NOT NULL,
	"companyName"	VARCHAR(100)		NOT NULL,
	"businessNumber"	VARCHAR(12)		NOT NULL,
	"companyEngName"	VARCHAR(100)		NULL,
	"corpNumber"	VARCHAR(14)		NULL,
	"corpType"	VARCHAR(20)		NULL,
	"founderName"	VARCHAR(50)		NULL,
	"companyType"	VARCHAR(50)		NULL,
	"zipCode"	VARCHAR(6)		NULL,
	"industryName"	VARCHAR(100)		NULL,
	"companyStatus"	VARCHAR(20)		NULL,
	"foundingYear"	INT		NULL,
	"roadAddress"	TEXT		NOT NULL,
	"lotAddress"	TEXT		NULL,
	"yearInBusiness"	INT		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "Businesses"."corpType" IS '영리/비영리/협회/유한회사/상장회사 등등';

COMMENT ON COLUMN "Businesses"."companyType" IS '개인,법인';

COMMENT ON COLUMN "Businesses"."companyStatus" IS '정상/휴업/폐업 ( 홈택스 기준) -> 공공데이터포털 API로 따로 조회 할 예정';

COMMENT ON COLUMN "Businesses"."foundingYear" IS '실제값은 YYYYMMDD 형태, 사용할 떄, YYYY까지만 사용하기';

COMMENT ON COLUMN "Businesses"."yearInBusiness" IS '개업연도로 계산해서 채워넣기';

DROP TABLE "OnlineSales";

CREATE TABLE "OnlineSales" (
	"onlineSalesID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"onlineSalesNumber"	VARCHAR(30)		NULL,
	"phoneNumber"	VARCHAR(20)		NULL,
	"email"	VARCHAR(100)		NULL,
	"reportDate"	DATE		NULL,
	"establishmentStatus"	VARCHAR(20)		NULL,
	"salesMethod"	VARCHAR(50)		NULL,
	"handledItems"	TEXT		NULL,
	"internetDomain"	VARCHAR(200)		NULL,
	"reportingAgencyName"	VARCHAR(100)		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "OnlineSales"."phoneNumber" IS '일반전화번호  / 개인전화번호
두개중 하나로 나누어서 주기';

DROP TABLE "raw_NationalPensionDetails";

CREATE TABLE "raw_NationalPensionDetails" (
	"Key"	VARCHAR(255)		NOT NULL,
	"사업장명"	VARCHAR(255)		NULL,
	"사업자등록번호"	VARCHAR(255)		NULL,
	"사업장업종코드"	VARCHAR(255)		NULL,
	"최초등록년"	VARCHAR(255)		NULL,
	"최종등록월"	VARCHAR(255)		NULL
);

DROP TABLE "NationalPensionDetails";

CREATE TABLE "NationalPensionDetails" (
	"nationalPensionDetailID"	INT		NOT NULL,
	"nationalPensionID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"generationYearMonth"	DATE		NULL,
	"subscriberCount"	INT		NULL,
	"currentMonthBillingAmount"	DECIMAL(15,2)		NULL,
	"newSubscriberCount"	INT		NULL,
	"lostSubscriberCount"	INT		NULL,
	"estimatedLaborCost"	DECIMAL(15,2)		NULL,
	"estimatedRevenue"	DECIMAL(15,2)		NULL,
	"estimatedNetIncome"	DECIMAL(15,2)		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

DROP TABLE "Procurements";

CREATE TABLE "Procurements" (
	"procurementID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"mainIndustry"	VARCHAR(100)		NULL,
	"companyCountry"	VARCHAR(50)		NULL,
	"corpEstablishmentDate"	DATE		NULL,
	"naraMarketRegistrationDate"	DATE		NULL,
	"foundingDate"	DATE		NULL,
	"isFemaleRepresentative"	BOOLEAN		NULL,
	"isWomenBusinessCertified"	BOOLEAN		NULL,
	"isDisabledBusinessCertified"	BOOLEAN		NULL,
	"isSocialEnterpriseCertified"	BOOLEAN		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "Procurements"."procurementID" IS 'Public Procurement Service';

DROP TABLE "raw_NationalPensions";

CREATE TABLE "raw_NationalPensions" (
	"Key"	VARCHAR(255)		NOT NULL,
	"자료생성년월"	VARCHAR(255)		NULL,
	"사업장명"	VARCHAR(255)		NULL,
	"사업자등록번호"	VARCHAR(255)		NULL,
	"사업장가입상태코드"	VARCHAR(255)		NULL,
	"우편번호"	VARCHAR(255)		NULL,
	"사업장업종코드"	VARCHAR(255)		NULL,
	"사업장업종코드명"	VARCHAR(255)		NULL,
	"사업장지번상세주소"	VARCHAR(255)		NULL,
	"사업장도로명상세주소"	VARCHAR(255)		NULL,
	"고객법정동 주소코드"	VARCHAR(255)		NULL,
	"고객행정동 주소코드"	VARCHAR(255)		NULL,
	"법정동 주소 광역시도 코드"	VARCHAR(255)		NULL,
	"법정동 주소 광역시 시군구 코드"	VARCHAR(255)		NULL,
	"법정도 주소 광역시 시군구 읍면동 코드"	VARCHAR(255)		NULL,
	"사업장 형태 구분 코드"	VARCHAR(255)		NULL,
	"적용일자"	VARCHAR(255)		NULL,
	"재등록일자"	VARCHAR(255)		NULL,
	"탈퇴일자"	VARCHAR(255)		NULL,
	"가입자수"	VARCHAR(255)		NULL,
	"당월고지금액"	VARCHAR(255)		NULL,
	"신규취득자수"	VARCHAR(255)		NULL,
	"상실가입자수"	VARCHAR(255)		NULL,
	"companyID"	VARCHAR(255)		NOT NULL
);

COMMENT ON COLUMN "raw_NationalPensions"."자료생성년월" IS '전월달에 기업별 납입한 기준
EX: 2025-7 경우 2025년 6월 까지의 기준';

COMMENT ON COLUMN "raw_NationalPensions"."사업자등록번호" IS '앞의 6자리만 존재';

COMMENT ON COLUMN "raw_NationalPensions"."사업장가입상태코드" IS '1: 등록 
2: 탈퇴';

COMMENT ON COLUMN "raw_NationalPensions"."사업장지번상세주소" IS '동까지만';

COMMENT ON COLUMN "raw_NationalPensions"."사업장도로명상세주소" IS '로까지만';

COMMENT ON COLUMN "raw_NationalPensions"."고객법정동 주소코드" IS 'EX: 봉천동';

COMMENT ON COLUMN "raw_NationalPensions"."고객행정동 주소코드" IS 'EX: 청룡동';

COMMENT ON COLUMN "raw_NationalPensions"."사업장 형태 구분 코드" IS '1: 법인
2: 개인';

COMMENT ON COLUMN "raw_NationalPensions"."적용일자" IS '국민연금 적용일자';

DROP TABLE "raw_Procurements";

CREATE TABLE "raw_Procurements" (
	"Key"	VARCHAR(255)		NOT NULL,
	"업체명"	VARCHAR(255)		NULL,
	"사업자등록번호"	VARCHAR(255)		NULL,
	"대표자명"	VARCHAR(255)		NULL,
	"업체소재시도"	VARCHAR(255)		NULL,
	"업체소재시군구"	VARCHAR(255)		NULL,
	"본사 지사 구분"	VARCHAR(255)		NULL,
	"대표업종"	VARCHAR(255)		NULL,
	"업체국가"	VARCHAR(255)		NULL,
	"기업형태구분"	VARCHAR(255)		NULL,
	"제조공급구분"	VARCHAR(255)		NULL,
	"대표세부품명"	VARCHAR(255)		NULL,
	"법인설립일자"	VARCHAR(255)		NULL,
	"나라장터등록일자"	VARCHAR(255)		NULL,
	"개업일자"	VARCHAR(255)		NULL,
	"여성대표자여부"	VARCHAR(255)		NULL,
	"여성기업인증여부"	VARCHAR(255)		NULL,
	"장애인기업인증여부"	VARCHAR(255)		NULL,
	"사회적기업인증여부"	VARCHAR(255)		NULL,
	"CreatedAt"	VARCHAR(255)		NULL,
	"UpdatedAt"	VARCHAR(255)		NULL
);

COMMENT ON COLUMN "raw_Procurements"."본사 지사 구분" IS '필요 없는 데이터';

COMMENT ON COLUMN "raw_Procurements"."기업형태구분" IS 'EX: 중소기업, 대기업

좋은 데이터 아님';

COMMENT ON COLUMN "raw_Procurements"."제조공급구분" IS '제조 / 공급

필요없음';

COMMENT ON COLUMN "raw_Procurements"."대표세부품명" IS '품목코드 / 세부품명

필요없음';

COMMENT ON COLUMN "raw_Procurements"."나라장터등록일자" IS '공공입찰 등록일';

DROP TABLE "willshow";

CREATE TABLE "willshow" (
	"Key"	VARCHAR(255)		NOT NULL,
	"Field"	VARCHAR(255)		NULL,
	"Field2"	VARCHAR(255)		NULL,
	"Field3"	VARCHAR(255)		NULL,
	"Field4"	VARCHAR(255)		NULL,
	"Field5"	VARCHAR(255)		NULL,
	"Field6"	VARCHAR(255)		NULL,
	"Field7"	VARCHAR(255)		NULL,
	"Field8"	VARCHAR(255)		NULL,
	"Field9"	VARCHAR(255)		NULL,
	"Field10"	VARCHAR(255)		NULL
);

DROP TABLE "Addresses";

CREATE TABLE "Addresses" (
	"businessID"	INT		NOT NULL,
	"employmentRoadAddr"	TEXT		NULL,
	"pensionLotAddr"	TEXT		NULL,
	"pensionRoadAddr"	TEXT		NULL,
	"smallLotAddr"	TEXT		NULL,
	"smallRoadAddr"	TEXT		NULL,
	"onlineLotAddr"	TEXT		NULL,
	"onlineRoadAddr"	TEXT		NULL,
	"procurementAddr"	TEXT		NULL,
	"dartRoadAddr"	TEXT		NULL
);

COMMENT ON COLUMN "Addresses"."dartRoadAddr" IS '가장 완벽한 형태의 주소';

DROP TABLE "SmallBusinesses";

CREATE TABLE "SmallBusinesses" (
	"smallBusinessID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"commercialDistrictIndustryCode"	VARCHAR(10)		NULL,
	"commercialDistrictIndustryName"	VARCHAR(100)		NULL,
	"standardIndustryCode"	VARCHAR(10)		NULL,
	"standardIndustryName"	VARCHAR(100)		NULL,
	"commercialEstablishmentNumber"	VARCHAR(20)		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "SmallBusinesses"."commercialDistrictIndustryCode" IS '상권업종소분류코드';

COMMENT ON COLUMN "SmallBusinesses"."commercialDistrictIndustryName" IS '상권업종소분류명';

DROP TABLE "systemLogs";

CREATE TABLE "systemLogs" (
	"logID"	INT		NOT NULL,
	"userID"	INT		NOT NULL,
	"viewCount"	INT		NULL,
	"callCount"	INT		NULL,
	"recordedAt"	DATETIME		NULL,
	"viewedItem"	VARCHAR(200)		NULL,
	"actionType"	VARCHAR(50)		NULL,
	"createdAt"	DATETIME		NULL
);

DROP TABLE "Darts";

CREATE TABLE "Darts" (
	"dartID"	INT		NOT NULL,
	"businessID"	INT		NOT NULL,
	"stockName"	VARCHAR(100)		NULL,
	"stockCode"	VARCHAR(10)		NULL,
	"industryCode"	VARCHAR(10)		NULL,
	"websiteUrl"	VARCHAR(255)		NULL,
	"irWebsiteUrl"	VARCHAR(255)		NULL,
	"phoneNumber"	VARCHAR(20)		NULL,
	"faxNumber"	VARCHAR(20)		NULL,
	"foundingDate"	DATE		NULL,
	"fiscalEndDate"	DATE		NULL,
	"createdAt"	TIMESTAMP		NULL,
	"updatedAt"	TIMESTAMP		NULL
);

COMMENT ON COLUMN "Darts"."stockName" IS '종목명(상장사) 또는 약식명칭(기타법인)';

DROP TABLE "raw_Darts";

CREATE TABLE "raw_Darts" (
	"Key"	VARCHAR(255)		NOT NULL,
	"회사명"	VARCHAR(255)		NULL,
	"회사영문명"	VARCHAR(255)		NULL,
	"종목명(상장사) 또는 약식명칭(기타법인)"	VARCHAR(255)		NULL,
	"상장회사의 종목코드(6자리)"	VARCHAR(255)		NULL,
	"대표자명"	VARCHAR(255)		NULL,
	"법인구분"	VARCHAR(255)		NULL,
	"법인등록번호"	VARCHAR(255)		NULL,
	"사업자등록번호"	VARCHAR(255)		NULL,
	"주소"	VARCHAR(255)		NULL,
	"홈페이지"	VARCHAR(255)		NULL,
	"IR홈페이지"	VARCHAR(255)		NULL,
	"전화번호"	VARCHAR(255)		NULL,
	"팩스번호"	VARCHAR(255)		NULL,
	"업종코드"	VARCHAR(255)		NULL,
	"설립일"	VARCHAR(255)		NULL,
	"결산월"	VARCHAR(255)		NULL
);

DROP TABLE "raw_SmallBusinesses";

CREATE TABLE "raw_SmallBusinesses" (
	"Key"	VARCHAR(255)		NOT NULL,
	"상가업소번호"	VARCHAR(255)		NULL,
	"상호명"	VARCHAR(255)		NULL,
	"지점명"	VARCHAR(255)		NULL,
	"상권업종대분류코드"	VARCHAR(255)		NULL,
	"상권업종대분류명"	VARCHAR(255)		NULL,
	"상권업종중분류코드"	VARCHAR(255)		NULL,
	"상권업종중분류명"	VARCHAR(255)		NULL,
	"상권업종소분류코드"	VARCHAR(255)		NULL,
	"상권업종소분류명"	VARCHAR(255)		NULL,
	"표준산업분류코드"	VARCHAR(255)		NULL,
	"표준산업분류명"	VARCHAR(255)		NULL,
	"시도코드"	VARCHAR(255)		NULL,
	"시도명"	VARCHAR(255)		NULL,
	"시군구코드"	VARCHAR(255)		NULL,
	"시군구명"	VARCHAR(255)		NULL,
	"행정동코드"	VARCHAR(255)		NULL,
	"행정동명"	VARCHAR(255)		NULL,
	"법정동코드"	VARCHAR(255)		NULL,
	"법정동명"	VARCHAR(255)		NULL,
	"지번코드"	VARCHAR(255)		NULL,
	"대지구분코드"	VARCHAR(255)		NULL,
	"대지구분명"	VARCHAR(255)		NULL,
	"지번본번지"	VARCHAR(255)		NULL,
	"지번부번지"	VARCHAR(255)		NULL,
	"지번주소"	VARCHAR(255)		NULL,
	"도로명코드"	VARCHAR(255)		NULL,
	"도로명"	VARCHAR(255)		NULL,
	"건물본번지"	VARCHAR(255)		NULL,
	"건물부번지"	VARCHAR(255)		NULL,
	"건물관리번호"	VARCHAR(255)		NULL,
	"건물명"	VARCHAR(255)		NULL,
	"도로명주소"	VARCHAR(255)		NULL,
	"구우편번호"	VARCHAR(255)		NULL,
	"신우편번호"	VARCHAR(255)		NULL,
	"동정보"	VARCHAR(255)		NULL,
	"층정보"	VARCHAR(255)		NULL,
	"호정보"	VARCHAR(255)		NULL,
	"경도"	VARCHAR(255)		NULL,
	"위도"	VARCHAR(255)		NULL,
	"CreatedAt"	VARCHAR(255)		NULL,
	"UpdatedAt"	VARCHAR(255)		NULL
);

COMMENT ON COLUMN "raw_SmallBusinesses"."지번본번지" IS 'EX: 백옥대로 9-10
9 : 본번지
10 : 부번지';

ALTER TABLE "Employments" ADD CONSTRAINT "PK_EMPLOYMENTS" PRIMARY KEY (
	"employmentsID",
	"businessID"
);

ALTER TABLE "raw_OnlineSales" ADD CONSTRAINT "PK_RAW_ONLINESALES" PRIMARY KEY (
	"Key"
);

ALTER TABLE "Users" ADD CONSTRAINT "PK_USERS" PRIMARY KEY (
	"userID"
);

ALTER TABLE "NationalPensions" ADD CONSTRAINT "PK_NATIONALPENSIONS" PRIMARY KEY (
	"nationalPensionID",
	"businessID"
);

ALTER TABLE "raw_Employments" ADD CONSTRAINT "PK_RAW_EMPLOYMENTS" PRIMARY KEY (
	"Key"
);

ALTER TABLE "Businesses" ADD CONSTRAINT "PK_BUSINESSES" PRIMARY KEY (
	"businessID"
);

ALTER TABLE "OnlineSales" ADD CONSTRAINT "PK_ONLINESALES" PRIMARY KEY (
	"onlineSalesID",
	"businessID"
);

ALTER TABLE "raw_NationalPensionDetails" ADD CONSTRAINT "PK_RAW_NATIONALPENSIONDETAILS" PRIMARY KEY (
	"Key"
);

ALTER TABLE "NationalPensionDetails" ADD CONSTRAINT "PK_NATIONALPENSIONDETAILS" PRIMARY KEY (
	"nationalPensionDetailID",
	"nationalPensionID",
	"businessID"
);

ALTER TABLE "Procurements" ADD CONSTRAINT "PK_PROCUREMENTS" PRIMARY KEY (
	"procurementID",
	"businessID"
);

ALTER TABLE "raw_NationalPensions" ADD CONSTRAINT "PK_RAW_NATIONALPENSIONS" PRIMARY KEY (
	"Key"
);

ALTER TABLE "raw_Procurements" ADD CONSTRAINT "PK_RAW_PROCUREMENTS" PRIMARY KEY (
	"Key"
);

ALTER TABLE "willshow" ADD CONSTRAINT "PK_WILLSHOW" PRIMARY KEY (
	"Key"
);

ALTER TABLE "Addresses" ADD CONSTRAINT "PK_ADDRESSES" PRIMARY KEY (
	"businessID"
);

ALTER TABLE "SmallBusinesses" ADD CONSTRAINT "PK_SMALLBUSINESSES" PRIMARY KEY (
	"smallBusinessID",
	"businessID"
);

ALTER TABLE "systemLogs" ADD CONSTRAINT "PK_SYSTEMLOGS" PRIMARY KEY (
	"logID",
	"userID"
);

ALTER TABLE "Darts" ADD CONSTRAINT "PK_DARTS" PRIMARY KEY (
	"dartID",
	"businessID"
);

ALTER TABLE "raw_Darts" ADD CONSTRAINT "PK_RAW_DARTS" PRIMARY KEY (
	"Key"
);

ALTER TABLE "raw_SmallBusinesses" ADD CONSTRAINT "PK_RAW_SMALLBUSINESSES" PRIMARY KEY (
	"Key"
);

ALTER TABLE "Employments" ADD CONSTRAINT "FK_Businesses_TO_Employments_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "NationalPensions" ADD CONSTRAINT "FK_Businesses_TO_NationalPensions_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "OnlineSales" ADD CONSTRAINT "FK_Businesses_TO_OnlineSales_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "NationalPensionDetails" ADD CONSTRAINT "FK_NationalPensions_TO_NationalPensionDetails_1" FOREIGN KEY (
	"nationalPensionID"
)
REFERENCES "NationalPensions" (
	"nationalPensionID"
);

ALTER TABLE "NationalPensionDetails" ADD CONSTRAINT "FK_NationalPensions_TO_NationalPensionDetails_2" FOREIGN KEY (
	"businessID"
)
REFERENCES "NationalPensions" (
	"businessID"
);

ALTER TABLE "Procurements" ADD CONSTRAINT "FK_Businesses_TO_Procurements_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "Addresses" ADD CONSTRAINT "FK_Businesses_TO_Addresses_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "SmallBusinesses" ADD CONSTRAINT "FK_Businesses_TO_SmallBusinesses_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

ALTER TABLE "systemLogs" ADD CONSTRAINT "FK_Users_TO_systemLogs_1" FOREIGN KEY (
	"userID"
)
REFERENCES "Users" (
	"userID"
);

ALTER TABLE "Darts" ADD CONSTRAINT "FK_Businesses_TO_Darts_1" FOREIGN KEY (
	"businessID"
)
REFERENCES "Businesses" (
	"businessID"
);

