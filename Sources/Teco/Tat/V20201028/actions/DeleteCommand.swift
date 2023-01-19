//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tat {
    /// DeleteCommand请求参数结构体
    public struct DeleteCommandRequest: TCRequestModel {
        /// 待删除的命令ID。
        public let commandId: String

        public init(commandId: String) {
            self.commandId = commandId
        }

        enum CodingKeys: String, CodingKey {
            case commandId = "CommandId"
        }
    }

    /// DeleteCommand返回参数结构体
    public struct DeleteCommandResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 删除命令
    ///
    /// 此接口用于删除命令。
    /// 如果命令与执行器关联，则无法被删除。
    @inlinable
    public func deleteCommand(_ input: DeleteCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCommandResponse> {
        self.client.execute(action: "DeleteCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 删除命令
    ///
    /// 此接口用于删除命令。
    /// 如果命令与执行器关联，则无法被删除。
    @inlinable
    public func deleteCommand(_ input: DeleteCommandRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCommandResponse {
        try await self.client.execute(action: "DeleteCommand", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 删除命令
    ///
    /// 此接口用于删除命令。
    /// 如果命令与执行器关联，则无法被删除。
    @inlinable
    public func deleteCommand(commandId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCommandResponse> {
        self.deleteCommand(DeleteCommandRequest(commandId: commandId), region: region, logger: logger, on: eventLoop)
    }

    /// 删除命令
    ///
    /// 此接口用于删除命令。
    /// 如果命令与执行器关联，则无法被删除。
    @inlinable
    public func deleteCommand(commandId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCommandResponse {
        try await self.deleteCommand(DeleteCommandRequest(commandId: commandId), region: region, logger: logger, on: eventLoop)
    }
}
