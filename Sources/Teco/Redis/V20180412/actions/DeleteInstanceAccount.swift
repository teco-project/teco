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

extension Redis {
    /// DeleteInstanceAccount请求参数结构体
    public struct DeleteInstanceAccountRequest: TCRequestModel {
        /// 实例ID
        public let instanceId: String

        /// 子账号名称
        public let accountName: String

        public init(instanceId: String, accountName: String) {
            self.instanceId = instanceId
            self.accountName = accountName
        }

        enum CodingKeys: String, CodingKey {
            case instanceId = "InstanceId"
            case accountName = "AccountName"
        }
    }

    /// DeleteInstanceAccount返回参数结构体
    public struct DeleteInstanceAccountResponse: TCResponseModel {
        /// 任务ID
        public let taskId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 删除实例子账号
    @inlinable
    public func deleteInstanceAccount(_ input: DeleteInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceAccountResponse> {
        self.client.execute(action: "DeleteInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例子账号
    @inlinable
    public func deleteInstanceAccount(_ input: DeleteInstanceAccountRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceAccountResponse {
        try await self.client.execute(action: "DeleteInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除实例子账号
    @inlinable
    public func deleteInstanceAccount(instanceId: String, accountName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteInstanceAccountResponse> {
        let input = DeleteInstanceAccountRequest(instanceId: instanceId, accountName: accountName)
        return self.client.execute(action: "DeleteInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除实例子账号
    @inlinable
    public func deleteInstanceAccount(instanceId: String, accountName: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteInstanceAccountResponse {
        let input = DeleteInstanceAccountRequest(instanceId: instanceId, accountName: accountName)
        return try await self.client.execute(action: "DeleteInstanceAccount", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
