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

extension Tcss {
    /// ModifySecLogJoinState请求参数结构体
    public struct ModifySecLogJoinStateRequest: TCRequestModel {
        /// 日志类型
        /// bash日志: container_bash
        /// 容器启动: container_launch
        /// k8sApi: k8s_api
        public let logType: String

        /// 状态(true:开 false:关)
        public let state: Bool

        public init(logType: String, state: Bool) {
            self.logType = logType
            self.state = state
        }

        enum CodingKeys: String, CodingKey {
            case logType = "LogType"
            case state = "State"
        }
    }

    /// ModifySecLogJoinState返回参数结构体
    public struct ModifySecLogJoinStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改安全日志接入状态
    @inlinable @discardableResult
    public func modifySecLogJoinState(_ input: ModifySecLogJoinStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogJoinStateResponse> {
        self.client.execute(action: "ModifySecLogJoinState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全日志接入状态
    @inlinable @discardableResult
    public func modifySecLogJoinState(_ input: ModifySecLogJoinStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogJoinStateResponse {
        try await self.client.execute(action: "ModifySecLogJoinState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改安全日志接入状态
    @inlinable @discardableResult
    public func modifySecLogJoinState(logType: String, state: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifySecLogJoinStateResponse> {
        let input = ModifySecLogJoinStateRequest(logType: logType, state: state)
        return self.client.execute(action: "ModifySecLogJoinState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改安全日志接入状态
    @inlinable @discardableResult
    public func modifySecLogJoinState(logType: String, state: Bool, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifySecLogJoinStateResponse {
        let input = ModifySecLogJoinStateRequest(logType: logType, state: state)
        return try await self.client.execute(action: "ModifySecLogJoinState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
