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
    /// DescribeCloudRecording请求参数结构体
    public struct DescribeCloudRecordingRequest: TCRequest {
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

    /// DescribeCloudRecording返回参数结构体
    public struct DescribeCloudRecordingResponse: TCResponse {
        /// 录制任务的唯一Id。
        public let taskId: String

        /// 云端录制任务的状态信息。
        /// Idle：表示当前录制任务空闲中
        /// InProgress：表示当前录制任务正在进行中。
        /// Exited：表示当前录制任务正在退出的过程中。
        public let status: String

        /// 录制文件信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let storageFileList: [StorageFile]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case storageFileList = "StorageFileList"
            case requestId = "RequestId"
        }
    }

    /// 查询云端录制状态
    ///
    /// 成功开启录制后，可以使用此接口来查询录制状态。仅在录制任务进行时有效，录制退出后查询将会返回错误。
    /// 录制文件上传到云点播VOD时，StorageFileList中不会返回录制文件信息，请订阅相关录制文件回调事件，获取录制文件信息。
    @inlinable
    public func describeCloudRecording(_ input: DescribeCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudRecordingResponse> {
        self.client.execute(action: "DescribeCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询云端录制状态
    ///
    /// 成功开启录制后，可以使用此接口来查询录制状态。仅在录制任务进行时有效，录制退出后查询将会返回错误。
    /// 录制文件上传到云点播VOD时，StorageFileList中不会返回录制文件信息，请订阅相关录制文件回调事件，获取录制文件信息。
    @inlinable
    public func describeCloudRecording(_ input: DescribeCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRecordingResponse {
        try await self.client.execute(action: "DescribeCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询云端录制状态
    ///
    /// 成功开启录制后，可以使用此接口来查询录制状态。仅在录制任务进行时有效，录制退出后查询将会返回错误。
    /// 录制文件上传到云点播VOD时，StorageFileList中不会返回录制文件信息，请订阅相关录制文件回调事件，获取录制文件信息。
    @inlinable
    public func describeCloudRecording(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeCloudRecordingResponse> {
        self.describeCloudRecording(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 查询云端录制状态
    ///
    /// 成功开启录制后，可以使用此接口来查询录制状态。仅在录制任务进行时有效，录制退出后查询将会返回错误。
    /// 录制文件上传到云点播VOD时，StorageFileList中不会返回录制文件信息，请订阅相关录制文件回调事件，获取录制文件信息。
    @inlinable
    public func describeCloudRecording(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeCloudRecordingResponse {
        try await self.describeCloudRecording(.init(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
