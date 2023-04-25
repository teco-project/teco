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
    /// CreateCameraState请求参数结构体
    public struct CreateCameraStateRequest: TCRequestModel {
        /// 集团编码
        public let groupCode: String

        /// 广场ID
        public let mallId: UInt64

        /// 场内所有相机的状态值
        public let cameraStates: [CameraState]

        public init(groupCode: String, mallId: UInt64, cameraStates: [CameraState]) {
            self.groupCode = groupCode
            self.mallId = mallId
            self.cameraStates = cameraStates
        }

        enum CodingKeys: String, CodingKey {
            case groupCode = "GroupCode"
            case mallId = "MallId"
            case cameraStates = "CameraStates"
        }
    }

    /// CreateCameraState返回参数结构体
    public struct CreateCameraStateResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 相机状态上报接口
    ///
    /// 上报当前场内所有相机的当前状态
    @inlinable @discardableResult
    public func createCameraState(_ input: CreateCameraStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCameraStateResponse> {
        self.client.execute(action: "CreateCameraState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 相机状态上报接口
    ///
    /// 上报当前场内所有相机的当前状态
    @inlinable @discardableResult
    public func createCameraState(_ input: CreateCameraStateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCameraStateResponse {
        try await self.client.execute(action: "CreateCameraState", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 相机状态上报接口
    ///
    /// 上报当前场内所有相机的当前状态
    @inlinable @discardableResult
    public func createCameraState(groupCode: String, mallId: UInt64, cameraStates: [CameraState], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCameraStateResponse> {
        self.createCameraState(.init(groupCode: groupCode, mallId: mallId, cameraStates: cameraStates), region: region, logger: logger, on: eventLoop)
    }

    /// 相机状态上报接口
    ///
    /// 上报当前场内所有相机的当前状态
    @inlinable @discardableResult
    public func createCameraState(groupCode: String, mallId: UInt64, cameraStates: [CameraState], region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCameraStateResponse {
        try await self.createCameraState(.init(groupCode: groupCode, mallId: mallId, cameraStates: cameraStates), region: region, logger: logger, on: eventLoop)
    }
}
