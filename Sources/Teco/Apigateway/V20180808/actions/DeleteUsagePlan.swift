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

import TecoCore

extension Apigateway {
    /// DeleteUsagePlan请求参数结构体
    public struct DeleteUsagePlanRequest: TCRequestModel {
        /// 待删除的使用计划唯一 ID。
        public let usagePlanId: String

        public init(usagePlanId: String) {
            self.usagePlanId = usagePlanId
        }

        enum CodingKeys: String, CodingKey {
            case usagePlanId = "UsagePlanId"
        }
    }

    /// DeleteUsagePlan返回参数结构体
    public struct DeleteUsagePlanResponse: TCResponseModel {
        /// 删除操作是否成功。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case result = "Result"
            case requestId = "RequestId"
        }
    }

    /// 删除使用计划
    ///
    /// 本接口（DeleteUsagePlan）用于删除使用计划。
    @inlinable
    public func deleteUsagePlan(_ input: DeleteUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsagePlanResponse> {
        self.client.execute(action: "DeleteUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除使用计划
    ///
    /// 本接口（DeleteUsagePlan）用于删除使用计划。
    @inlinable
    public func deleteUsagePlan(_ input: DeleteUsagePlanRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsagePlanResponse {
        try await self.client.execute(action: "DeleteUsagePlan", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除使用计划
    ///
    /// 本接口（DeleteUsagePlan）用于删除使用计划。
    @inlinable
    public func deleteUsagePlan(usagePlanId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsagePlanResponse> {
        self.deleteUsagePlan(.init(usagePlanId: usagePlanId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除使用计划
    ///
    /// 本接口（DeleteUsagePlan）用于删除使用计划。
    @inlinable
    public func deleteUsagePlan(usagePlanId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsagePlanResponse {
        try await self.deleteUsagePlan(.init(usagePlanId: usagePlanId), region: region, logger: logger, on: eventLoop)
    }
}
