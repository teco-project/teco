//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Dayu {
    /// 获取基础防护黑洞阈值
    ///
    /// 获取基础防护黑洞阈值
    @inlinable
    public func describeBasicDeviceThreshold(_ input: DescribeBasicDeviceThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBasicDeviceThresholdResponse > {
        self.client.execute(action: "DescribeBasicDeviceThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取基础防护黑洞阈值
    ///
    /// 获取基础防护黑洞阈值
    @inlinable
    public func describeBasicDeviceThreshold(_ input: DescribeBasicDeviceThresholdRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBasicDeviceThresholdResponse {
        try await self.client.execute(action: "DescribeBasicDeviceThreshold", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeBasicDeviceThreshold请求参数结构体
    public struct DescribeBasicDeviceThresholdRequest: TCRequestModel {
        /// 查询的IP地址，取值如：1.1.1.1
        public let basicIp: String
        
        /// 查询IP所属地域，取值如：gz、bj、sh、hk等地域缩写
        public let basicRegion: String
        
        /// 专区类型，取值如：公有云专区：public，黑石专区：bm, NAT服务器专区：nat，互联网通道：channel。
        public let basicBizType: String
        
        /// 设备类型，取值如：服务器：cvm，公有云负载均衡：clb，黑石负载均衡：lb，NAT服务器：nat，互联网通道：channel.
        public let basicDeviceType: String
        
        /// 有效性检查，取值为1
        public let basicCheckFlag: UInt64
        
        /// 可选，IPInstance Nat 网关（如果查询的设备类型是NAT服务器，需要传此参数，通过nat资源查询接口获取）
        public let basicIpInstance: String?
        
        /// 可选，运营商线路（如果查询的设备类型是NAT服务器，需要传此参数为5）
        public let basicIspCode: UInt64?
        
        public init (basicIp: String, basicRegion: String, basicBizType: String, basicDeviceType: String, basicCheckFlag: UInt64, basicIpInstance: String?, basicIspCode: UInt64?) {
            self.basicIp = basicIp
            self.basicRegion = basicRegion
            self.basicBizType = basicBizType
            self.basicDeviceType = basicDeviceType
            self.basicCheckFlag = basicCheckFlag
            self.basicIpInstance = basicIpInstance
            self.basicIspCode = basicIspCode
        }
        
        enum CodingKeys: String, CodingKey {
            case basicIp = "BasicIp"
            case basicRegion = "BasicRegion"
            case basicBizType = "BasicBizType"
            case basicDeviceType = "BasicDeviceType"
            case basicCheckFlag = "BasicCheckFlag"
            case basicIpInstance = "BasicIpInstance"
            case basicIspCode = "BasicIspCode"
        }
    }
    
    /// DescribeBasicDeviceThreshold返回参数结构体
    public struct DescribeBasicDeviceThresholdResponse: TCResponseModel {
        /// 返回黑洞封堵值
        public let threshold: UInt64
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case threshold = "Threshold"
            case requestId = "RequestId"
        }
    }
}