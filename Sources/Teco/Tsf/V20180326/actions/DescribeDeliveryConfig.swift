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

extension Tsf {
    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(_ input: DescribeDeliveryConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeDeliveryConfigResponse > {
        self.client.execute(action: "DescribeDeliveryConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 获取单个投递项配置
    ///
    /// 获取单个投递项配置信息
    @inlinable
    public func describeDeliveryConfig(_ input: DescribeDeliveryConfigRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDeliveryConfigResponse {
        try await self.client.execute(action: "DescribeDeliveryConfig", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeDeliveryConfig请求参数结构体
    public struct DescribeDeliveryConfigRequest: TCRequestModel {
        /// 投递配置id
        public let configId: String
        
        public init (configId: String) {
            self.configId = configId
        }
        
        enum CodingKeys: String, CodingKey {
            case configId = "ConfigId"
        }
    }
    
    /// DescribeDeliveryConfig返回参数结构体
    public struct DescribeDeliveryConfigResponse: TCResponseModel {
        /// 投递kafka配置
        public let result: KafkaDeliveryConfig
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}