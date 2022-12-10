//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
// See CONTRIBUTORS.txt for the list of Teco project authors
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Trtc {
    /// 更新云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来更新录制任务。仅在录制任务进行时有效，录制退出后更新将会返回错误。更新操作是全量覆盖，并不是增量更新的模式，也就是说每次更新都需要携带全量的信息。
    @inlinable
    public func modifyCloudRecording(_ input: ModifyCloudRecordingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyCloudRecordingResponse > {
        self.client.execute(action: "ModifyCloudRecording", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新云端录制任务
    ///
    /// 成功开启录制后，可以使用此接口来更新录制任务。仅在录制任务进行时有效，录制退出后更新将会返回错误。更新操作是全量覆盖，并不是增量更新的模式，也就是说每次更新都需要携带全量的信息。
    @inlinable
    public func modifyCloudRecording(_ input: ModifyCloudRecordingRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyCloudRecordingResponse {
        try await self.client.execute(action: "ModifyCloudRecording", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyCloudRecording请求参数结构体
    public struct ModifyCloudRecordingRequest: TCRequestModel {
        /// TRTC的SDKAppId，和录制的房间所对应的SDKAppId相同。
        public let sdkAppId: UInt64
        
        /// 录制任务的唯一Id，在启动录制成功后会返回。
        public let taskId: String
        
        /// 需要更新的混流的布局参数。
        public let mixLayoutParams: MixLayoutParams
        
        /// 指定订阅流白名单或者黑名单。
        public let subscribeStreamUserIds: SubscribeStreamUserIds
        
        public init (sdkAppId: UInt64, taskId: String, mixLayoutParams: MixLayoutParams, subscribeStreamUserIds: SubscribeStreamUserIds) {
            self.sdkAppId = sdkAppId
            self.taskId = taskId
            self.mixLayoutParams = mixLayoutParams
            self.subscribeStreamUserIds = subscribeStreamUserIds
        }
        
        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case taskId = "TaskId"
            case mixLayoutParams = "MixLayoutParams"
            case subscribeStreamUserIds = "SubscribeStreamUserIds"
        }
    }
    
    /// ModifyCloudRecording返回参数结构体
    public struct ModifyCloudRecordingResponse: TCResponseModel {
        /// 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}