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

extension Ssl {
    /// SubmitAuditManager请求参数结构体
    public struct SubmitAuditManagerRequest: TCRequestModel {
        /// 管理人ID
        public let managerId: Int64

        public init(managerId: Int64) {
            self.managerId = managerId
        }

        enum CodingKeys: String, CodingKey {
            case managerId = "ManagerId"
        }
    }

    /// SubmitAuditManager返回参数结构体
    public struct SubmitAuditManagerResponse: TCResponseModel {
        /// 管理人ID
        public let managerId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case managerId = "ManagerId"
            case requestId = "RequestId"
        }
    }

    /// 重新提交审核管理人
    @inlinable
    public func submitAuditManager(_ input: SubmitAuditManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitAuditManagerResponse> {
        self.client.execute(action: "SubmitAuditManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新提交审核管理人
    @inlinable
    public func submitAuditManager(_ input: SubmitAuditManagerRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitAuditManagerResponse {
        try await self.client.execute(action: "SubmitAuditManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 重新提交审核管理人
    @inlinable
    public func submitAuditManager(managerId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<SubmitAuditManagerResponse> {
        let input = SubmitAuditManagerRequest(managerId: managerId)
        return self.client.execute(action: "SubmitAuditManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 重新提交审核管理人
    @inlinable
    public func submitAuditManager(managerId: Int64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> SubmitAuditManagerResponse {
        let input = SubmitAuditManagerRequest(managerId: managerId)
        return try await self.client.execute(action: "SubmitAuditManager", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
