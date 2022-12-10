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

extension Rum {
    /// 获取DescribeDataEventUrl信息
    @inlinable
    public func describeDataEventUrl(_ input: DescribeDataEventUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDataEventUrlResponse > {
        self.client.execute(action: "DescribeDataEventUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取DescribeDataEventUrl信息
    @inlinable
    public func describeDataEventUrl(_ input: DescribeDataEventUrlRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDataEventUrlResponse {
        try await self.client.execute(action: "DescribeDataEventUrl", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDataEventUrl请求参数结构体
    public struct DescribeDataEventUrlRequest: TCRequestModel {
        /// 开始时间
        public let startTime: Int64
        
        /// allcount：性能视图，day：14天数据，condition：条件列表，ckuv：获取uv趋势，ckpv：获取pv趋势，nettype/version/platform/isp/region/device/browser/ext1/ext2/ext3/ret/status/from/url/env/：网络平台视图/Version视图/设备视图/ISP视图/地区视图/浏览器视图/ext1视图等等
        public let type: String
        
        /// 结束时间
        public let endTime: Int64
        
        /// 项目ID
        public let id: Int64
        
        /// 自定义2
        public let extSecond: String?
        
        /// 浏览器引擎
        public let engine: String?
        
        /// 运营商
        public let isp: String?
        
        /// 来源页面
        public let from: String?
        
        /// 日志等级
        public let level: String?
        
        /// 品牌
        public let brand: String?
        
        /// 地区
        public let area: String?
        
        /// 版本
        public let versionNum: String?
        
        /// 平台
        public let platform: String?
        
        /// 自定义3
        public let extThird: String?
        
        /// 自定义1
        public let extFirst: String?
        
        /// 网络类型
        public let netType: String?
        
        /// 机型
        public let device: String?
        
        /// 是否海外
        public let isAbroad: String?
        
        /// 操作系统
        public let os: String?
        
        /// 浏览器
        public let browser: String?
        
        /// 筛选条件
        public let name: String?
        
        /// 环境
        public let env: String?
        
        public init (startTime: Int64, type: String, endTime: Int64, id: Int64, extSecond: String?, engine: String?, isp: String?, from: String?, level: String?, brand: String?, area: String?, versionNum: String?, platform: String?, extThird: String?, extFirst: String?, netType: String?, device: String?, isAbroad: String?, os: String?, browser: String?, name: String?, env: String?) {
            self.startTime = startTime
            self.type = type
            self.endTime = endTime
            self.id = id
            self.extSecond = extSecond
            self.engine = engine
            self.isp = isp
            self.from = from
            self.level = level
            self.brand = brand
            self.area = area
            self.versionNum = versionNum
            self.platform = platform
            self.extThird = extThird
            self.extFirst = extFirst
            self.netType = netType
            self.device = device
            self.isAbroad = isAbroad
            self.os = os
            self.browser = browser
            self.name = name
            self.env = env
        }
        
        enum CodingKeys: String, CodingKey {
            case startTime = "StartTime"
            case type = "Type"
            case endTime = "EndTime"
            case id = "ID"
            case extSecond = "ExtSecond"
            case engine = "Engine"
            case isp = "Isp"
            case from = "From"
            case level = "Level"
            case brand = "Brand"
            case area = "Area"
            case versionNum = "VersionNum"
            case platform = "Platform"
            case extThird = "ExtThird"
            case extFirst = "ExtFirst"
            case netType = "NetType"
            case device = "Device"
            case isAbroad = "IsAbroad"
            case os = "Os"
            case browser = "Browser"
            case name = "Name"
            case env = "Env"
        }
    }
    
    /// DescribeDataEventUrl返回参数结构体
    public struct DescribeDataEventUrlResponse: TCResponseModel {
        /// 返回值
        public let result: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
