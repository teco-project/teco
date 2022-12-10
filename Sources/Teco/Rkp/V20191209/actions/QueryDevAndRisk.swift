//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Rkp {
    /// Devid及风险查询
    ///
    /// 腾讯天御设备风险查询接口，输入由客户应用自主采集的设备信息， 通过腾讯大数据风控能力，可以准确根据输入设备信息，还原设备库中的设备ID，并且识别设备的风险，解决客户业务过程中的设备风险，降低企业损失。
    @inlinable
    public func queryDevAndRisk(_ input: QueryDevAndRiskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < QueryDevAndRiskResponse > {
        self.client.execute(action: "QueryDevAndRisk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// Devid及风险查询
    ///
    /// 腾讯天御设备风险查询接口，输入由客户应用自主采集的设备信息， 通过腾讯大数据风控能力，可以准确根据输入设备信息，还原设备库中的设备ID，并且识别设备的风险，解决客户业务过程中的设备风险，降低企业损失。
    @inlinable
    public func queryDevAndRisk(_ input: QueryDevAndRiskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> QueryDevAndRiskResponse {
        try await self.client.execute(action: "QueryDevAndRisk", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// QueryDevAndRisk请求参数结构体
    public struct QueryDevAndRiskRequest: TCRequestModel {
        /// 设备类型 0表示Android， 1表示IOS
        public let devType: Int64
        
        /// Android Imei号
        public let imei: String?
        
        /// Mac地址
        public let mac: String?
        
        /// android  Aid
        public let aid: String?
        
        /// Android Cid
        public let cid: String?
        
        /// 手机Imsi
        public let imsi: String?
        
        /// Df 磁盘分区信息
        public let df: String?
        
        /// 内核版本
        public let kernelVer: String?
        
        /// 存储大小
        public let storage: String?
        
        /// 设备驱动指纹
        public let dfp: String?
        
        /// 启动时间
        public let bootTime: String?
        
        /// 分辨率 水平*垂直 格式
        public let resolution: String?
        
        /// 铃声列表
        public let ringList: String?
        
        /// 字体列表
        public let fontList: String?
        
        /// 传感器列表
        public let sensorList: String?
        
        /// CPU型号
        public let cpuType: String?
        
        /// 电池容量
        public let battery: String?
        
        /// 信通院广告ID
        public let oaid: String?
        
        /// IOS 广告ID
        public let idfa: String?
        
        /// IOS 应用ID
        public let idfv: String?
        
        /// 设备名称
        public let deviceName: String?
        
        /// IOS手机型号
        public let iphoneModel: String?
        
        /// Android 指纹
        public let fingerprint: String?
        
        /// Android序列号
        public let serialId: String?
        
        public init (devType: Int64, imei: String?, mac: String?, aid: String?, cid: String?, imsi: String?, df: String?, kernelVer: String?, storage: String?, dfp: String?, bootTime: String?, resolution: String?, ringList: String?, fontList: String?, sensorList: String?, cpuType: String?, battery: String?, oaid: String?, idfa: String?, idfv: String?, deviceName: String?, iphoneModel: String?, fingerprint: String?, serialId: String?) {
            self.devType = devType
            self.imei = imei
            self.mac = mac
            self.aid = aid
            self.cid = cid
            self.imsi = imsi
            self.df = df
            self.kernelVer = kernelVer
            self.storage = storage
            self.dfp = dfp
            self.bootTime = bootTime
            self.resolution = resolution
            self.ringList = ringList
            self.fontList = fontList
            self.sensorList = sensorList
            self.cpuType = cpuType
            self.battery = battery
            self.oaid = oaid
            self.idfa = idfa
            self.idfv = idfv
            self.deviceName = deviceName
            self.iphoneModel = iphoneModel
            self.fingerprint = fingerprint
            self.serialId = serialId
        }
        
        enum CodingKeys: String, CodingKey {
            case devType = "DevType"
            case imei = "Imei"
            case mac = "Mac"
            case aid = "Aid"
            case cid = "Cid"
            case imsi = "Imsi"
            case df = "Df"
            case kernelVer = "KernelVer"
            case storage = "Storage"
            case dfp = "Dfp"
            case bootTime = "BootTime"
            case resolution = "Resolution"
            case ringList = "RingList"
            case fontList = "FontList"
            case sensorList = "SensorList"
            case cpuType = "CpuType"
            case battery = "Battery"
            case oaid = "Oaid"
            case idfa = "Idfa"
            case idfv = "Idfv"
            case deviceName = "DeviceName"
            case iphoneModel = "IphoneModel"
            case fingerprint = "Fingerprint"
            case serialId = "SerialId"
        }
    }
    
    /// QueryDevAndRisk返回参数结构体
    public struct QueryDevAndRiskResponse: TCResponseModel {
        /// 是否查得
        public let found: Int64
        
        /// 匹配数量级别
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let allCnt: Int64?
        
        /// 匹配到的设备信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let matches: [DevInfoQ]?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case found = "Found"
            case allCnt = "AllCnt"
            case matches = "Matches"
            case requestId = "RequestId"
        }
    }
}
