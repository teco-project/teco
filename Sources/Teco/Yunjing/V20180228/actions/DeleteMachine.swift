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

extension Yunjing {
    /// DeleteMachine请求参数结构体
    public struct DeleteMachineRequest: TCRequestModel {
        /// 云镜客户端Uuid。
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

    /// 卸载云镜客户端
    ///
    /// 本接口（DeleteMachine）用于卸载云镜客户端。
    @inlinable
    public func deleteMachine(_ input: DeleteMachineRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteMachineResponse > {
        self.client.execute(action: "DeleteMachine", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 卸载云镜客户端
    ///
    /// 本接口（DeleteMachine）用于卸载云镜客户端。
    @inlinable
    public func deleteMachine(_ input: DeleteMachineRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineResponse {
        try await self.client.execute(action: "DeleteMachine", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 卸载云镜客户端
    ///
    /// 本接口（DeleteMachine）用于卸载云镜客户端。
    @inlinable
    public func deleteMachine(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DeleteMachineResponse > {
        self.deleteMachine(DeleteMachineRequest(uuid: uuid), logger: logger, on: eventLoop)
    }

    /// 卸载云镜客户端
    ///
    /// 本接口（DeleteMachine）用于卸载云镜客户端。
    @inlinable
    public func deleteMachine(uuid: String, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteMachineResponse {
        try await self.deleteMachine(DeleteMachineRequest(uuid: uuid), logger: logger, on: eventLoop)
    }
}
