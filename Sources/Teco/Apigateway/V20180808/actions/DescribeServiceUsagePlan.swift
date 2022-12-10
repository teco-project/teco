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

extension Apigateway {
    /// 查询服务使用计划详情
    ///
    /// 本接口（DescribeServiceUsagePlan）用于查询服务使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务的所有使用计划。
    @inlinable
    public func describeServiceUsagePlan(_ input: DescribeServiceUsagePlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeServiceUsagePlanResponse > {
        self.client.execute(action: "DescribeServiceUsagePlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询服务使用计划详情
    ///
    /// 本接口（DescribeServiceUsagePlan）用于查询服务使用计划详情。
    /// 服务若需要鉴权限流生效，则需要绑定使用计划到此服务中，本接口用于查询绑定到一个服务的所有使用计划。
    @inlinable
    public func describeServiceUsagePlan(_ input: DescribeServiceUsagePlanRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceUsagePlanResponse {
        try await self.client.execute(action: "DescribeServiceUsagePlan", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// DescribeServiceUsagePlan请求参数结构体
    public struct DescribeServiceUsagePlanRequest: TCRequestModel {
        /// 待查询的服务唯一 ID。
        public let serviceId: String
        
        /// 返回数量，默认为20，最大值为100。
        public let limit: Int64?
        
        /// 偏移量，默认为0。
        public let offset: Int64?
        
        public init (serviceId: String, limit: Int64?, offset: Int64?) {
            self.serviceId = serviceId
            self.limit = limit
            self.offset = offset
        }
        
        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
            case limit = "Limit"
            case offset = "Offset"
        }
    }
    
    /// DescribeServiceUsagePlan返回参数结构体
    public struct DescribeServiceUsagePlanResponse: TCResponseModel {
        /// 服务绑定使用计划列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceUsagePlanSet
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
}