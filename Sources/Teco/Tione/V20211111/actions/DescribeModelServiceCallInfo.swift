//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project
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

// Test PR teco-project/teco-code-generator#23.

import Logging
import NIOCore
import TecoCore

extension Tione {
    /// DescribeModelServiceCallInfo请求参数结构体
    public struct DescribeModelServiceCallInfoRequest: TCRequestModel {
        /// 服务组id
        public let serviceGroupId: String

        public init(serviceGroupId: String) {
            self.serviceGroupId = serviceGroupId
        }

        enum CodingKeys: String, CodingKey {
            case serviceGroupId = "ServiceGroupId"
        }
    }

    /// DescribeModelServiceCallInfo返回参数结构体
    public struct DescribeModelServiceCallInfoResponse: TCResponseModel {
        /// 服务调用信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceCallInfo: ServiceCallInfo?

        /// 升级网关调用信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let inferGatewayCallInfo: InferGatewayCallInfo?

        /// 默认nginx网关的调用信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let defaultNginxGatewayCallInfo: DefaultNginxGatewayCallInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case serviceCallInfo = "ServiceCallInfo"
            case inferGatewayCallInfo = "InferGatewayCallInfo"
            case defaultNginxGatewayCallInfo = "DefaultNginxGatewayCallInfo"
            case requestId = "RequestId"
        }
    }

    /// 展示服务的调用信息
    @inlinable
    public func describeModelServiceCallInfo(_ input: DescribeModelServiceCallInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceCallInfoResponse> {
        self.client.execute(action: "DescribeModelServiceCallInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示服务的调用信息
    @inlinable
    public func describeModelServiceCallInfo(_ input: DescribeModelServiceCallInfoRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceCallInfoResponse {
        try await self.client.execute(action: "DescribeModelServiceCallInfo", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示服务的调用信息
    @inlinable
    public func describeModelServiceCallInfo(serviceGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceCallInfoResponse> {
        self.describeModelServiceCallInfo(.init(serviceGroupId: serviceGroupId), region: region, logger: logger, on: eventLoop)
    }

    /// 展示服务的调用信息
    @inlinable
    public func describeModelServiceCallInfo(serviceGroupId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceCallInfoResponse {
        try await self.describeModelServiceCallInfo(.init(serviceGroupId: serviceGroupId), region: region, logger: logger, on: eventLoop)
    }
}
