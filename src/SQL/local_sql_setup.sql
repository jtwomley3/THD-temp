create TABLE SKU (
        SKU_NBR integer PRIMARY KEY not null,
        MER_DEPT_NBR INTEGER not null,
        MER_CLASS_NBR INTEGER not null,
        MER_SUB_CLASS_NBR INTEGER not null,
        SKU_DESC VARCHAR(255) not null,
        SHRT_SKU_DESC VARCHAR (45) not null,
        SKU_TYP_CD CHAR(2),
        SKU_STAT_CD INTEGER,
        LMBR_CNT INTEGER,
        LMBR_CONV_FTR NUMERIC (4,2),
        UOM_CD CHAR(2),
        CRT_DT TIMESTAMP,
        IPGM_TYP_IND CHAR(45),
        FRN_INSTL_FLG CHAR(45),
        UPS_RMND_FLG CHAR(45),
        RQST_DEL_DT TIMESTAMP,
        LAST_UPD_TS TIMESTAMP,
        LAST_UPD_USER_ID VARCHAR(8),
        CAPTN_BYO_IGRP_NBR INTEGER,
        BYO_IGRP_IND CHAR(45),
        PVTLBL_FLG CHAR(45),
        AD_ACCRL_CD INTEGER,
        PLIAB_INSR_RT_CD CHAR(45),
        HAZMAT_CD CHAR(10),
        IDC_SHP_BGN_DT TIMESTAMP,
        IMP_FRT_GRP_CD CHAR(10),
        ENERGY_EFFIC_IND CHAR(10),
        ALLOW_DISC_FLG CHAR(2),
        SERL_NBR_REQD_FLG CHAR(2),
        SKU_SUB_TYP_CD INTEGER,
        MER_CTG_NBR INTEGER,
        MER_SUB_SC_NBR INTEGER);
        

drop table sku

alter table sku alter column last_upd_ts set default now()

INSERT INTO SKU ( SKU_NBR, MER_DEPT_NBR, MER_CLASS_NBR, MER_SUB_CLASS_NBR, SKU_DESC, SHRT_SKU_DESC, last_upd_user_id) values (1000000001, 24, 10, 10, 'Thors Hammer', 'THors Hammer', 'JXT2826')

select * from sku
        