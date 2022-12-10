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

extension Apigateway {
    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(_ input: DescribeApiEnvironmentStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeApiEnvironmentStrategyResponse > {
        self.client.execute(action: "DescribeApiEnvironmentStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 展示API绑定的限流策略
    ///
    /// 本接口（DescribeApiEnvironmentStrategy）用于展示API绑定的限流策略。
    @inlinable
    public func describeApiEnvironmentStrategy(_ input: DescribeApiEnvironmentStrategyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeApiEnvironmentStrategyResponse {
        try await self.client.execute(action: "DescribeApiEnvironmentStrategy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeApiEnvironmentStrategy请求参数结构体
    public struct DescribeApiEnvironmentStrategyRequest: TCRequestModel {
        /// API所属服务唯一ID。
        public let serviceId: String
        
        /// 环境列表。
        public let environmentNames: [String]?
        
        /// API唯一ID。
        public let apiId: String?
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: Int64?
        
        /// 偏移量，默认为 0。
        public let offset: Int64?
        
        public init (serviceId: String, environmentNames: [String]?, apiId: String?, limit: Int64?, offset: Int64?) {
            self.serviceId = serviceId
            self.environmentNames = environmentNames
            self.apiId = apiId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case environmentNames = "EnvironmentNames"
            case apiId = "ApiId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeApiEnvironmentStrategy返回参数结构体
    public struct DescribeApiEnvironmentStrategyResponse: TCResponseModel {
        /// api绑定策略详情
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ApiEnvironmentStrategyStataus
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}
