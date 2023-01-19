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

extension Trtc {
    /// StopPublishCdnStream请求参数结构体
    public struct StopPublishCdnStreamRequest: TCRequestModel {
        /// TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和转推的房间所对应的SdkAppId相同。
        public let sdkAppId: UInt64

        /// 唯一标识转推任务。
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

    /// StopPublishCdnStream返回参数结构体
    public struct StopPublishCdnStreamResponse: TCResponseModel {
        /// 转推任务唯一的String Id
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 停止转推任务
    ///
    /// 停止转推任务。
    @inlinable
    public func stopPublishCdnStream(_ input: StopPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopPublishCdnStreamResponse> {
        self.client.execute(action: "StopPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 停止转推任务
    ///
    /// 停止转推任务。
    @inlinable
    public func stopPublishCdnStream(_ input: StopPublishCdnStreamRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopPublishCdnStreamResponse {
        try await self.client.execute(action: "StopPublishCdnStream", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 停止转推任务
    ///
    /// 停止转推任务。
    @inlinable
    public func stopPublishCdnStream(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<StopPublishCdnStreamResponse> {
        self.stopPublishCdnStream(StopPublishCdnStreamRequest(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }

    /// 停止转推任务
    ///
    /// 停止转推任务。
    @inlinable
    public func stopPublishCdnStream(sdkAppId: UInt64, taskId: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> StopPublishCdnStreamResponse {
        try await self.stopPublishCdnStream(StopPublishCdnStreamRequest(sdkAppId: sdkAppId, taskId: taskId), region: region, logger: logger, on: eventLoop)
    }
}
