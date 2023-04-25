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
    /// DescribeModelServiceHistory请求参数结构体
    public struct DescribeModelServiceHistoryRequest: TCRequestModel {
        /// 服务Id
        public let serviceId: String

        public init(serviceId: String) {
            self.serviceId = serviceId
        }

        enum CodingKeys: String, CodingKey {
            case serviceId = "ServiceId"
        }
    }

    /// DescribeModelServiceHistory返回参数结构体
    public struct DescribeModelServiceHistoryResponse: TCResponseModel {
        /// 历史版本总数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCount: Int64?

        /// 服务版本
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let serviceHistory: [ServiceHistory]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case serviceHistory = "ServiceHistory"
            case requestId = "RequestId"
        }
    }

    /// 展示服务的历史版本
    @inlinable
    public func describeModelServiceHistory(_ input: DescribeModelServiceHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceHistoryResponse> {
        self.client.execute(action: "DescribeModelServiceHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 展示服务的历史版本
    @inlinable
    public func describeModelServiceHistory(_ input: DescribeModelServiceHistoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceHistoryResponse {
        try await self.client.execute(action: "DescribeModelServiceHistory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 展示服务的历史版本
    @inlinable
    public func describeModelServiceHistory(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeModelServiceHistoryResponse> {
        self.describeModelServiceHistory(.init(serviceId: serviceId), region: region, logger: logger, on: eventLoop)
    }

    /// 展示服务的历史版本
    @inlinable
    public func describeModelServiceHistory(serviceId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeModelServiceHistoryResponse {
        try await self.describeModelServiceHistory(.init(serviceId: serviceId), region: region, logger: logger, on: eventLoop)
    }
}
