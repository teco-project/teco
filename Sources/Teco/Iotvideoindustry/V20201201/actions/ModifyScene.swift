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

import Logging
import NIOCore
import TecoCore

extension Iotvideoindustry {
    /// ModifyScene请求参数结构体
    public struct ModifySceneRequest: TCRequest {
        /// 场景ID
        public let intId: Int64

        /// 场景名称
        public let sceneName: String?

        /// 触发条件
        public let sceneTrigger: String?

        /// 录制时长(秒)
        public let recordDuration: Int64?

        public init(intId: Int64, sceneName: String? = nil, sceneTrigger: String? = nil, recordDuration: Int64? = nil) {
            self.intId = intId
            self.sceneName = sceneName
            self.sceneTrigger = sceneTrigger
            self.recordDuration = recordDuration
        }

        enum CodingKeys: String, CodingKey {
            case intId = "IntId"
            case sceneName = "SceneName"
            case sceneTrigger = "SceneTrigger"
            case recordDuration = "RecordDuration"
        }
    }

    /// ModifyScene返回参数结构体
    public struct ModifySceneResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改场景
    @inlinable @discardableResult
    public func modifyScene(_ input: ModifySceneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySceneResponse> {
        self.client.execute(action: "ModifyScene", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改场景
    @inlinable @discardableResult
    public func modifyScene(_ input: ModifySceneRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySceneResponse {
        try await self.client.execute(action: "ModifyScene", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改场景
    @inlinable @discardableResult
    public func modifyScene(intId: Int64, sceneName: String? = nil, sceneTrigger: String? = nil, recordDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySceneResponse> {
        self.modifyScene(.init(intId: intId, sceneName: sceneName, sceneTrigger: sceneTrigger, recordDuration: recordDuration), region: region, logger: logger, on: eventLoop)
    }

    /// 修改场景
    @inlinable @discardableResult
    public func modifyScene(intId: Int64, sceneName: String? = nil, sceneTrigger: String? = nil, recordDuration: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySceneResponse {
        try await self.modifyScene(.init(intId: intId, sceneName: sceneName, sceneTrigger: sceneTrigger, recordDuration: recordDuration), region: region, logger: logger, on: eventLoop)
    }
}
