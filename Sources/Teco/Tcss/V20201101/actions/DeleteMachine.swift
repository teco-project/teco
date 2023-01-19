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

extension Tcss {
    /// DeleteMachine请求参数结构体
    public struct DeleteMachineRequest: TCRequestModel {
        /// 客户端Uuid
        public let uuid: String

        public init(uuid: String) {
            self.uuid = uuid
        }

        enum CodingKeys: String, CodingKey {
            case uuid = "Uuid"
        }
    }

    /// DeleteMachine返回参数结构体
    public struct DeleteMachineResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 卸载Agent客户端
    @inlinable
    public func deleteMachine(_ input: DeleteMachineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMachineResponse> {
        self.client.execute(action: "DeleteMachine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 卸载Agent客户端
    @inlinable
    public func deleteMachine(_ input: DeleteMachineRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineResponse {
        try await self.client.execute(action: "DeleteMachine", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 卸载Agent客户端
    @inlinable
    public func deleteMachine(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteMachineResponse> {
        self.deleteMachine(DeleteMachineRequest(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }

    /// 卸载Agent客户端
    @inlinable
    public func deleteMachine(uuid: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineResponse {
        try await self.deleteMachine(DeleteMachineRequest(uuid: uuid), region: region, logger: logger, on: eventLoop)
    }
}
