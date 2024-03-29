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

extension Trtc {
    /// DeleteCloudRecording请求参数结构体
    public struct DeleteCloudRecordingRequest: TCRequest {
        /// TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        public let sdkAppId: UInt64

        /// 录制任务的唯一Id，在启动录制成功后会返回。
        public let taskId: String

        public init(sdkAppId: UInt64, taskId: String) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
        }
    }

    /// DeleteCloudRecording返回参数结构体
    public struct DeleteCloudRecordingResponse: TCResponse {
        /// 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 停止云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来停止录制任务。停止录制成功后不代表文件全部传输完成，如果未完成后台将会继续上传文件，成功后通过事件回调通知客户文件全部传输完成状态。
    @inlinable
    public func deleteCloudRecording(_ input: DeleteCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCloudRecordingResponse> {
        self.client.execute(action: "DeleteCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来停止录制任务。停止录制成功后不代表文件全部传输完成，如果未完成后台将会继续上传文件，成功后通过事件回调通知客户文件全部传输完成状态。
    @inlinable
    public func deleteCloudRecording(_ input: DeleteCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCloudRecordingResponse {
        try await self.client.execute(action: "DeleteCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来停止录制任务。停止录制成功后不代表文件全部传输完成，如果未完成后台将会继续上传文件，成功后通过事件回调通知客户文件全部传输完成状态。
    @inlinable
    public func deleteCloudRecording(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteCloudRecordingResponse> {
        self.deleteCloudRecording(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来停止录制任务。停止录制成功后不代表文件全部传输完成，如果未完成后台将会继续上传文件，成功后通过事件回调通知客户文件全部传输完成状态。
    @inlinable
    public func deleteCloudRecording(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteCloudRecordingResponse {
        try await self.deleteCloudRecording(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
