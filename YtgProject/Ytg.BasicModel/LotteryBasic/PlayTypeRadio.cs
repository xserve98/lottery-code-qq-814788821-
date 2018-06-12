﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Ytg.BasicModel
{
    /// <summary>
    /// 玩法单选
    /// </summary>
    [Serializable, DataContract]
    public class PlayTypeRadio : EnaEntity
    {
        public PlayTypeRadio()
        {
            this.BonusBasic = 0;
            this.HasMoreBonus = false;
        }

       

        /// <summary>
        /// 名称
        /// </summary>
        [DataMember]
        public string PlayTypeRadioName { get; set; }

        #region  1800 奖金

        /// <summary>
        /// 奖金基数 1800
        /// </summary>
        [DataMember]
        public decimal BonusBasic { get; set; }

        /// <summary>
        /// 舍弃返点，最高奖金 1800
        /// </summary>
        [DataMember]
        public decimal MaxBonus { get; set; }

        #endregion

        #region 1700奖金
        /// <summary>
        /// 奖金基数 1700
        /// </summary>
        [DataMember]
        public decimal BonusBasic17 { get; set; }

        /// <summary>
        /// 舍弃返点，最高奖金 1700
        /// </summary>
        [DataMember]
        public decimal MaxBonus17 { get; set; }
        #endregion 

        /// <summary>
        /// 玩法二类编号
        /// </summary>
        [DataMember]
        public int NumCode { get; set; }


        /// <summary>
        /// 单选编号
        /// </summary>
        [DataMember]
        public int RadioCode { get; set; }

        /// <summary>
        /// 是否为固定奖金无论中奖与否,均有返点,为投注额的最高返点
        /// </summary>
        [DataMember]
        public bool IsFixed { get; set; }

        /// <summary>
        /// 单注最大注数
        /// </summary>
        [DataMember]
        public int MaxBetCount { get; set; }

        /// <summary>
        /// 单注最大金额
        /// </summary>
        [DataMember]
        public decimal MaxBetMonery { get; set; }

        /// <summary>
        ///1800 玩法最高返点
        /// </summary>
        [DataMember]
        public double MaxRebate { get; set; }

        /// <summary>
        /// 1700玩法最高返点
        /// </summary>
        [DataMember]
        public double MaxRebate1700 { get; set; }

        /// <summary>
        /// 是否拥有更多奖金
        /// </summary>
        [DataMember]
        public bool HasMoreBonus { get; set; }

        /// <summary>
        /// 增加0.1 ，增加多少奖金
        /// </summary>
        [DataMember]
        public decimal StepAmt { get; set; }

        /// <summary>
        /// 增加 0.1 1700 玩法增加多少奖金
        /// </summary>
        [DataMember,]
        public decimal StepAmt1700 { get; set; }
    }
}
