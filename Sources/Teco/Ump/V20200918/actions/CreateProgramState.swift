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

extension Ump {
    /// CreateProgramState请求参数结构体
    public struct CreateProgramStateRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 进程监控信息列表
        public let programStateItems: [ProgramStateItem]

        /// 商场ID
        public let mallId: UInt64?

        public init(groupCode: String, programStateItems: [ProgramStateItem], mallId: UInt64? = nil) {
            self.groupCode = groupCode
            self.programStateItems = programStateItems
            self.mallId = mallId
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case programStateItems = "ProgramStateItems"
            case mallId = "MallId"
        }
    }

    /// CreateProgramState返回参数结构体
    public struct CreateProgramStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable @discardableResult
    public func createProgramState(_ input: CreateProgramStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProgramStateResponse> {
        self.client.execute(action: "CreateProgramState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable @discardableResult
    public func createProgramState(_ input: CreateProgramStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProgramStateResponse {
        try await self.client.execute(action: "CreateProgramState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable @discardableResult
    public func createProgramState(groupCode: String, programStateItems: [ProgramStateItem], mallId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateProgramStateResponse> {
        self.createProgramState(.init(groupCode: groupCode, programStateItems: programStateItems, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }

    /// 进程监控信息上报
    ///
    /// 上报所有进程监控信息
    @inlinable @discardableResult
    public func createProgramState(groupCode: String, programStateItems: [ProgramStateItem], mallId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateProgramStateResponse {
        try await self.createProgramState(.init(groupCode: groupCode, programStateItems: programStateItems, mallId: mallId), region: region, logger: logger, on: eventLoop)
    }
}
