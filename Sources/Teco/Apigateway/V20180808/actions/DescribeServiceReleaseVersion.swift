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
    /// DescribeServiceReleaseVersion请求参数结构体
    public struct DescribeServiceReleaseVersionRequest: TCRequestModel {
        /// 待查询的服务唯一 ID。
        public let serviceId: String
        
        /// 返回数量，默认为 20，最大值为 100。
        public let limit: UInt64?
        
        /// 偏移量，默认为0。
        public let offset: UInt64?
        
        public init (serviceId: String, limit: UInt64? = nil, offset: UInt64? = nil) {
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
    
    /// DescribeServiceReleaseVersion返回参数结构体
    public struct DescribeServiceReleaseVersionResponse: TCResponseModel {
        /// 服务发布版本列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: ServiceReleaseVersion?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }
    
    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(_ input: DescribeServiceReleaseVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeServiceReleaseVersionResponse > {
        self.client.execute(action: "DescribeServiceReleaseVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 查询服务已发布的版本
    ///
    /// 本接口（DescribeServiceReleaseVersion）查询一个服务下面所有已经发布的版本列表。
    /// 用户在发布服务时，常有多个版本发布，可使用本接口查询已发布的版本。
    @inlinable
    public func describeServiceReleaseVersion(_ input: DescribeServiceReleaseVersionRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeServiceReleaseVersionResponse {
        try await self.client.execute(action: "DescribeServiceReleaseVersion", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
