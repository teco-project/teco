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

extension Antiddos {
    /// DescribeBasicDeviceStatus请求参数结构体
    public struct DescribeBasicDeviceStatusRequest: TCRequestModel {
        /// IP 资源列表
        public let ipList: [String]
        
        public init (ipList: [String]) {
            self.ipList = ipList
        }
        
        enum CodingKeys: String, CodingKey {
            case ipList = "IpList"
        }
    }
    
    /// DescribeBasicDeviceStatus返回参数结构体
    public struct DescribeBasicDeviceStatusResponse: TCResponseModel {
        /// 返回资源及状态，状态码：
        /// 1 - 封堵状态
        /// 2 - 正常状态
        /// 3 - 攻击状态
        public let data: [KeyValue]
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }
    
    /// 获取基础防护攻击状态
    @inlinable
    public func describeBasicDeviceStatus(_ input: DescribeBasicDeviceStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeBasicDeviceStatusResponse > {
        self.client.execute(action: "DescribeBasicDeviceStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取基础防护攻击状态
    @inlinable
    public func describeBasicDeviceStatus(_ input: DescribeBasicDeviceStatusRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeBasicDeviceStatusResponse {
        try await self.client.execute(action: "DescribeBasicDeviceStatus", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
