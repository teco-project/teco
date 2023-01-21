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

extension Trtc {
    /// CreateCloudRecording请求参数结构体
    public struct CreateCloudRecordingRequest: TCRequestModel {
        /// TRTC的[SdkAppId](https://cloud.tencent.com/document/product/647/46351#sdkappid)，和录制的房间所对应的SdkAppId相同。
        public let sdkAppId: UInt64

        /// TRTC的[RoomId](https://cloud.tencent.com/document/product/647/46351#roomid)，录制的TRTC房间所对应的RoomId。
        public let roomId: String

        /// 录制机器人用于进入TRTC房间拉流的[UserId](https://cloud.tencent.com/document/product/647/46351#userid)，注意这个UserId不能与其他TRTC房间内的主播或者其他录制任务等已经使用的UserId重复，建议可以把房间ID作为userId的标识的一部分，即录制机器人进入房间的userid应保证独立且唯一。
        public let userId: String

        /// 录制机器人用于进入TRTC房间拉流的用户签名，当前 UserId 对应的验证签名，相当于登录密码，具体计算方法请参考TRTC计算[UserSig](https://cloud.tencent.com/document/product/647/45910#UserSig)的方案。
        public let userSig: String

        /// 云端录制控制参数。
        public let recordParams: RecordParams

        /// 云端录制文件上传到云存储的参数(目前只支持使用腾讯云点播作为存储)。
        public let storageParams: StorageParams

        /// TRTC房间号的类型，必须和录制的房间所对应的RoomId类型相同:
        /// 0: 字符串类型的RoomId
        /// 1: 32位整型的RoomId（默认）
        public let roomIdType: UInt64?

        /// 混流的转码参数，录制模式为混流的时候可以设置。
        public let mixTranscodeParams: MixTranscodeParams?

        /// 混流的布局参数，录制模式为混流的时候可以设置。
        public let mixLayoutParams: MixLayoutParams?

        /// 接口可以调用的时效性，从成功开启录制并获得任务ID后开始计算，超时后无法调用查询、更新和停止等接口，但是录制任务不会停止。 参数的单位是小时，默认72小时（3天），最大可设置720小时（30天），最小设置6小时。举例说明：如果不设置该参数，那么开始录制成功后，查询、更新和停止录制的调用时效为72个小时。
        public let resourceExpiredHour: UInt64?

        /// TRTC房间权限加密串，只有在TRTC控制台启用了高级权限控制的时候需要携带，在TRTC控制台如果开启高级权限控制后，TRTC 的后台服务系统会校验一个叫做 [PrivateMapKey]（https://cloud.tencent.com/document/product/647/32240） 的“权限票据”，权限票据中包含了一个加密后的 RoomId 和一个加密后的“权限位列表”。由于 PrivateMapKey 中包含 RoomId，所以只提供了 UserSig 没有提供 PrivateMapKey 时，并不能进入指定的房间。
        public let privateMapKey: String?

        public init(sdkAppId: UInt64, roomId: String, userId: String, userSig: String, recordParams: RecordParams, storageParams: StorageParams, roomIdType: UInt64? = nil, mixTranscodeParams: MixTranscodeParams? = nil, mixLayoutParams: MixLayoutParams? = nil, resourceExpiredHour: UInt64? = nil, privateMapKey: String? = nil) {
            self.sdkAppId = sdkAppId
            self.roomId = roomId
            self.userId = userId
            self.userSig = userSig
            self.recordParams = recordParams
            self.storageParams = storageParams
            self.roomIdType = roomIdType
            self.mixTranscodeParams = mixTranscodeParams
            self.mixLayoutParams = mixLayoutParams
            self.resourceExpiredHour = resourceExpiredHour
            self.privateMapKey = privateMapKey
        }

        enum CodingKeys: String, CodingKey {
            case sdkAppId = "SdkAppId"
            case roomId = "RoomId"
            case userId = "UserId"
            case userSig = "UserSig"
            case recordParams = "RecordParams"
            case storageParams = "StorageParams"
            case roomIdType = "RoomIdType"
            case mixTranscodeParams = "MixTranscodeParams"
            case mixLayoutParams = "MixLayoutParams"
            case resourceExpiredHour = "ResourceExpiredHour"
            case privateMapKey = "PrivateMapKey"
        }
    }

    /// CreateCloudRecording返回参数结构体
    public struct CreateCloudRecordingResponse: TCResponseModel {
        /// 云录制服务分配的任务 ID。任务 ID 是对一次录制生命周期过程的唯一标识，结束录制时会失去意义。任务 ID需要业务保存下来，作为下次针对这个录制任务操作的参数。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 开始云端录制
    ///
    /// 接口说明：
    /// 启动云端录制功能，完成房间内的音视频录制，并上传到指定的云存储。您可以通过此 API 接口把TRTC 房间中的每一路音视频流做单独的录制有或者多路视频画面混流一路。
    /// 您可以通过此接口实现如下目标：
    /// * 指定订阅流参数（RecordParams）来指定需要录制的主播的黑名单或者白名单。
    /// * 指定第三方存储的参数（StorageParams）来指定上传到您希望的云存储，目前仅支持云点播存储（CloudVod）
    /// * 指定混流模式下的音视频转码详细参数（MixTranscodeParams），包括视频分辨率、视频码率、视频帧率、以及声音质量等
    /// * 指定混流模式各路画面的位置和布局或者也可以指定自动模板的方式来配置。
    /// 关键名词：
    /// * 单流录制：分别录制房间的订阅UserId的音频和视频。录制服务会实时将录制文件上传至云点播存储。
    /// * 合流录制：将房间内订阅UserId的音视频混录成一个音视频文件，并将录制文件上传至云点播存储（录制结束后可前往云点播控制台查看录制文件：https://console.cloud.tencent.com/vod/media）。
    @inlinable
    public func createCloudRecording(_ input: CreateCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudRecordingResponse> {
        self.client.execute(action: "CreateCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 开始云端录制
    ///
    /// 接口说明：
    /// 启动云端录制功能，完成房间内的音视频录制，并上传到指定的云存储。您可以通过此 API 接口把TRTC 房间中的每一路音视频流做单独的录制有或者多路视频画面混流一路。
    /// 您可以通过此接口实现如下目标：
    /// * 指定订阅流参数（RecordParams）来指定需要录制的主播的黑名单或者白名单。
    /// * 指定第三方存储的参数（StorageParams）来指定上传到您希望的云存储，目前仅支持云点播存储（CloudVod）
    /// * 指定混流模式下的音视频转码详细参数（MixTranscodeParams），包括视频分辨率、视频码率、视频帧率、以及声音质量等
    /// * 指定混流模式各路画面的位置和布局或者也可以指定自动模板的方式来配置。
    /// 关键名词：
    /// * 单流录制：分别录制房间的订阅UserId的音频和视频。录制服务会实时将录制文件上传至云点播存储。
    /// * 合流录制：将房间内订阅UserId的音视频混录成一个音视频文件，并将录制文件上传至云点播存储（录制结束后可前往云点播控制台查看录制文件：https://console.cloud.tencent.com/vod/media）。
    @inlinable
    public func createCloudRecording(_ input: CreateCloudRecordingRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudRecordingResponse {
        try await self.client.execute(action: "CreateCloudRecording", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 开始云端录制
    ///
    /// 接口说明：
    /// 启动云端录制功能，完成房间内的音视频录制，并上传到指定的云存储。您可以通过此 API 接口把TRTC 房间中的每一路音视频流做单独的录制有或者多路视频画面混流一路。
    /// 您可以通过此接口实现如下目标：
    /// * 指定订阅流参数（RecordParams）来指定需要录制的主播的黑名单或者白名单。
    /// * 指定第三方存储的参数（StorageParams）来指定上传到您希望的云存储，目前仅支持云点播存储（CloudVod）
    /// * 指定混流模式下的音视频转码详细参数（MixTranscodeParams），包括视频分辨率、视频码率、视频帧率、以及声音质量等
    /// * 指定混流模式各路画面的位置和布局或者也可以指定自动模板的方式来配置。
    /// 关键名词：
    /// * 单流录制：分别录制房间的订阅UserId的音频和视频。录制服务会实时将录制文件上传至云点播存储。
    /// * 合流录制：将房间内订阅UserId的音视频混录成一个音视频文件，并将录制文件上传至云点播存储（录制结束后可前往云点播控制台查看录制文件：https://console.cloud.tencent.com/vod/media）。
    @inlinable
    public func createCloudRecording(sdkAppId: UInt64, roomId: String, userId: String, userSig: String, recordParams: RecordParams, storageParams: StorageParams, roomIdType: UInt64? = nil, mixTranscodeParams: MixTranscodeParams? = nil, mixLayoutParams: MixLayoutParams? = nil, resourceExpiredHour: UInt64? = nil, privateMapKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateCloudRecordingResponse> {
        self.createCloudRecording(CreateCloudRecordingRequest(sdkAppId: sdkAppId, roomId: roomId, userId: userId, userSig: userSig, recordParams: recordParams, storageParams: storageParams, roomIdType: roomIdType, mixTranscodeParams: mixTranscodeParams, mixLayoutParams: mixLayoutParams, resourceExpiredHour: resourceExpiredHour, privateMapKey: privateMapKey), region: region, logger: logger, on: eventLoop)
    }

    /// 开始云端录制
    ///
    /// 接口说明：
    /// 启动云端录制功能，完成房间内的音视频录制，并上传到指定的云存储。您可以通过此 API 接口把TRTC 房间中的每一路音视频流做单独的录制有或者多路视频画面混流一路。
    /// 您可以通过此接口实现如下目标：
    /// * 指定订阅流参数（RecordParams）来指定需要录制的主播的黑名单或者白名单。
    /// * 指定第三方存储的参数（StorageParams）来指定上传到您希望的云存储，目前仅支持云点播存储（CloudVod）
    /// * 指定混流模式下的音视频转码详细参数（MixTranscodeParams），包括视频分辨率、视频码率、视频帧率、以及声音质量等
    /// * 指定混流模式各路画面的位置和布局或者也可以指定自动模板的方式来配置。
    /// 关键名词：
    /// * 单流录制：分别录制房间的订阅UserId的音频和视频。录制服务会实时将录制文件上传至云点播存储。
    /// * 合流录制：将房间内订阅UserId的音视频混录成一个音视频文件，并将录制文件上传至云点播存储（录制结束后可前往云点播控制台查看录制文件：https://console.cloud.tencent.com/vod/media）。
    @inlinable
    public func createCloudRecording(sdkAppId: UInt64, roomId: String, userId: String, userSig: String, recordParams: RecordParams, storageParams: StorageParams, roomIdType: UInt64? = nil, mixTranscodeParams: MixTranscodeParams? = nil, mixLayoutParams: MixLayoutParams? = nil, resourceExpiredHour: UInt64? = nil, privateMapKey: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateCloudRecordingResponse {
        try await self.createCloudRecording(CreateCloudRecordingRequest(sdkAppId: sdkAppId, roomId: roomId, userId: userId, userSig: userSig, recordParams: recordParams, storageParams: storageParams, roomIdType: roomIdType, mixTranscodeParams: mixTranscodeParams, mixLayoutParams: mixLayoutParams, resourceExpiredHour: resourceExpiredHour, privateMapKey: privateMapKey), region: region, logger: logger, on: eventLoop)
    }
}
