//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022-2023 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Mna {
    /// 接口能力扩展，用于填充电信的加速Token，并为未来参数提供兼容空间
    public struct Capacity: TCInputModel {
        /// 电信鉴权的Token。要加速的电信手机终端访问 http://qos.189.cn/qos-api/getToken?appid=TencentCloud 页面，获取返回结果中result的值
        public let ctccToken: String?

        /// 终端所处在的省份，建议不填写由服务端自动获取，若需填写请填写带有省、市、自治区、特别行政区等后缀的省份中文全称
        public let province: String?

        public init(ctccToken: String? = nil, province: String? = nil) {
            self.ctccToken = ctccToken
            self.province = province
        }

        enum CodingKeys: String, CodingKey {
            case ctccToken = "CTCCToken"
            case province = "Province"
        }
    }

    /// 加速策略关键数据
    public struct Context: TCInputModel {
        /// 测速数据
        public let networkData: NetworkData?

        /// 用户期望最低门限
        public let expectedLowThreshold: ExpectedThreshold?

        /// 用户期望最高门限
        public let expectedHighThreshold: ExpectedThreshold?

        public init(networkData: NetworkData? = nil, expectedLowThreshold: ExpectedThreshold? = nil, expectedHighThreshold: ExpectedThreshold? = nil) {
            self.networkData = networkData
            self.expectedLowThreshold = expectedLowThreshold
            self.expectedHighThreshold = expectedHighThreshold
        }

        enum CodingKeys: String, CodingKey {
            case networkData = "NetworkData"
            case expectedLowThreshold = "ExpectedLowThreshold"
            case expectedHighThreshold = "ExpectedHighThreshold"
        }
    }

    /// 移动网络加速目标地址结构体
    public struct DestAddressInfo: TCInputModel {
        /// 加速业务目标 ip 地址数组
        public let destIp: [String]

        public init(destIp: [String]) {
            self.destIp = destIp
        }

        enum CodingKeys: String, CodingKey {
            case destIp = "DestIp"
        }
    }

    /// 设备的基本信息
    public struct DeviceBaseInfo: TCOutputModel {
        /// 设备唯一ID
        public let deviceId: String

        /// 设备名称
        public let deviceName: String

        /// 设备创建的时间，单位：ms
        public let createTime: String

        /// 设备最后在线时间，单位：ms
        public let lastTime: String

        /// 设备的备注
        public let remark: String

        enum CodingKeys: String, CodingKey {
            case deviceId = "DeviceId"
            case deviceName = "DeviceName"
            case createTime = "CreateTime"
            case lastTime = "LastTime"
            case remark = "Remark"
        }
    }

    /// 设备详细信息
    public struct DeviceDetails: TCOutputModel {
        /// 设备基本信息
        public let deviceBaseInfo: DeviceBaseInfo

        /// 设备网络信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let deviceNetInfo: [DeviceNetInfo]?

        enum CodingKeys: String, CodingKey {
            case deviceBaseInfo = "DeviceBaseInfo"
            case deviceNetInfo = "DeviceNetInfo"
        }
    }

    /// 设备信息结构体
    public struct DeviceInfo: TCInputModel {
        /// 运营商
        /// 1：移动
        /// 2：电信
        /// 3：联通
        /// 4：广电
        /// 99：其他
        public let vendor: UInt64?

        /// 设备操作系统：
        /// 1：Android
        /// 2： IOS
        /// 99：其他
        public let os: UInt64?

        /// 设备唯一标识
        /// IOS 填写 IDFV
        /// Android 填写 IMEI
        public let deviceId: String?

        /// 用户手机号码
        public let phoneNum: String?

        /// 无线信息
        /// 1：4G
        /// 2：5G
        /// 3：WIFI
        /// 99：其他
        public let wireless: UInt64?

        public init(vendor: UInt64? = nil, os: UInt64? = nil, deviceId: String? = nil, phoneNum: String? = nil, wireless: UInt64? = nil) {
            self.vendor = vendor
            self.os = os
            self.deviceId = deviceId
            self.phoneNum = phoneNum
            self.wireless = wireless
        }

        enum CodingKeys: String, CodingKey {
            case vendor = "Vendor"
            case os = "OS"
            case deviceId = "DeviceId"
            case phoneNum = "PhoneNum"
            case wireless = "Wireless"
        }
    }

    /// 设备网络状态信息
    public struct DeviceNetInfo: TCOutputModel {
        /// 网络类型：
        /// 0:数据
        /// 1:Wi-Fi
        /// 2:有线
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let type: Int64?

        /// 启用/禁用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataEnable: Bool?

        /// 上行限速
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let uploadLimit: String?

        /// 下行限速
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let downloadLimit: String?

        /// 接收实时速率
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataRx: UInt64?

        /// 发送实时速率
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let dataTx: UInt64?

        /// 运营商类型：
        /// 1: 中国移动；
        /// 2: 中国电信;
        /// 3: 中国联通
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let vendor: Int64?

        /// 连接状态：
        /// 0:无连接
        /// 1:连接中
        /// 2:已连接
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let state: Int64?

        /// 公网IP
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let publicIp: String?

        /// 信号强度/单位：dbm
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let signalStrength: Int64?

        /// 数据网络类型：
        /// -1 ：无效值
        /// 2：2G
        /// 3：3G
        /// 4：4G
        /// 5：5G
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let rat: Int64?

        /// 网卡名
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let netInfoName: String?

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case dataEnable = "DataEnable"
            case uploadLimit = "UploadLimit"
            case downloadLimit = "DownloadLimit"
            case dataRx = "DataRx"
            case dataTx = "DataTx"
            case vendor = "Vendor"
            case state = "State"
            case publicIp = "PublicIp"
            case signalStrength = "SignalStrength"
            case rat = "Rat"
            case netInfoName = "NetInfoName"
        }
    }

    /// 用户期望门限
    public struct ExpectedThreshold: TCInputModel {
        /// 期望发起加速的时延阈值
        public let rtt: Float

        /// 期望发起加速的丢包率阈值
        public let loss: Float

        /// 期望发起加速的抖动阈值
        public let jitter: Float

        public init(rtt: Float, loss: Float, jitter: Float) {
            self.rtt = rtt
            self.loss = loss
            self.jitter = jitter
        }

        enum CodingKeys: String, CodingKey {
            case rtt = "RTT"
            case loss = "Loss"
            case jitter = "Jitter"
        }
    }

    /// 网络详细信息
    public struct NetDetails: TCOutputModel {
        /// 时间点，单位：s
        public let time: String

        /// 流量值（bit）
        public let current: Float

        enum CodingKeys: String, CodingKey {
            case time = "Time"
            case current = "Current"
        }
    }

    /// 测速数据
    public struct NetworkData: TCInputModel {
        /// 时延数组，最大长度30
        public let rtt: [Float]

        /// 丢包率
        public let loss: Float

        /// 抖动
        public let jitter: Float

        /// 10位秒级时间戳
        public let timestamp: Int64

        public init(rtt: [Float], loss: Float, jitter: Float, timestamp: Int64) {
            self.rtt = rtt
            self.loss = loss
            self.jitter = jitter
            self.timestamp = timestamp
        }

        enum CodingKeys: String, CodingKey {
            case rtt = "RTT"
            case loss = "Loss"
            case jitter = "Jitter"
            case timestamp = "Timestamp"
        }
    }

    /// 移动网络加速源地址结构体
    public struct SrcAddressInfo: TCInputModel {
        /// 用户私网 ipv4 地址
        public let srcIpv4: String?

        /// 用户公网 ipv4 地址
        public let srcPublicIpv4: String?

        /// 用户 ipv6 地址
        public let srcIpv6: String?

        public init(srcIpv4: String? = nil, srcPublicIpv4: String? = nil, srcIpv6: String? = nil) {
            self.srcIpv4 = srcIpv4
            self.srcPublicIpv4 = srcPublicIpv4
            self.srcIpv6 = srcIpv6
        }

        enum CodingKeys: String, CodingKey {
            case srcIpv4 = "SrcIpv4"
            case srcPublicIpv4 = "SrcPublicIpv4"
            case srcIpv6 = "SrcIpv6"
        }
    }

    /// 更新设备网络状态信息
    public struct UpdateNetInfo: TCInputModel {
        /// 网络类型：
        /// 0:数据
        /// 1:Wi-Fi
        public let type: Int64?

        /// 启用/禁用
        public let dataEnable: Bool?

        /// 上行限速：bit
        public let uploadLimit: UInt64?

        /// 下行限速：bit
        public let downloadLimit: UInt64?

        /// 网卡名
        public let netInfoName: String?

        public init(type: Int64? = nil, dataEnable: Bool? = nil, uploadLimit: UInt64? = nil, downloadLimit: UInt64? = nil, netInfoName: String? = nil) {
            self.type = type
            self.dataEnable = dataEnable
            self.uploadLimit = uploadLimit
            self.downloadLimit = downloadLimit
            self.netInfoName = netInfoName
        }

        enum CodingKeys: String, CodingKey {
            case type = "Type"
            case dataEnable = "DataEnable"
            case uploadLimit = "UploadLimit"
            case downloadLimit = "DownloadLimit"
            case netInfoName = "NetInfoName"
        }
    }
}
