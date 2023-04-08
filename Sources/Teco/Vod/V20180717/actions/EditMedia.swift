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

import TecoCore

extension Vod {
    /// EditMedia请求参数结构体
    public struct EditMediaRequest: TCRequestModel {
        /// 输入视频的类型，可以取的值为  File，Stream 两种。
        public let inputType: String

        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 输入的视频文件信息，当 InputType 为 File 时必填。
        public let fileInfos: [EditMediaFileInfo]?

        /// 输入的流信息，当 InputType 为 Stream 时必填。
        public let streamInfos: [EditMediaStreamInfo]?

        /// 编辑模板 ID，取值有 10，20，不填代表使用 10 模板。
        /// <li>10：拼接时，以分辨率最高的输入为基准；</li>
        /// <li>20：拼接时，以码率最高的输入为基准。</li>
        public let definition: UInt64?

        /// [任务流模板](/document/product/266/11700#.E4.BB.BB.E5.8A.A1.E6.B5.81.E6.A8.A1.E6.9D.BF)名字，如果要对生成的新视频执行任务流时填写。
        public let procedureName: String?

        /// 编辑后生成的文件配置。
        public let outputConfig: EditMediaOutputConfig?

        /// 标识来源上下文，用于透传用户请求信息，在EditMediaComplete回调和任务流状态变更回调将返回该字段值，最长 1000个字符。
        public let sessionContext: String?

        /// 任务的优先级，数值越大优先级越高，取值范围是 -10 到 10，不填代表 0。
        public let tasksPriority: Int64?

        /// 用于任务去重的识别码，如果三天内曾有过相同的识别码的请求，则本次的请求会返回错误。最长 50 个字符，不带或者带空字符串表示不做去重。
        public let sessionId: String?

        /// 保留字段，特殊用途时使用。
        public let extInfo: String?

        public init(inputType: String, subAppId: UInt64? = nil, fileInfos: [EditMediaFileInfo]? = nil, streamInfos: [EditMediaStreamInfo]? = nil, definition: UInt64? = nil, procedureName: String? = nil, outputConfig: EditMediaOutputConfig? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, extInfo: String? = nil) {
            self.inputType = inputType
            self.subAppId = subAppId
            self.fileInfos = fileInfos
            self.streamInfos = streamInfos
            self.definition = definition
            self.procedureName = procedureName
            self.outputConfig = outputConfig
            self.sessionContext = sessionContext
            self.tasksPriority = tasksPriority
            self.sessionId = sessionId
            self.extInfo = extInfo
        }

        enum CodingKeys: String, CodingKey {
            case inputType = "InputType"
            case subAppId = "SubAppId"
            case fileInfos = "FileInfos"
            case streamInfos = "StreamInfos"
            case definition = "Definition"
            case procedureName = "ProcedureName"
            case outputConfig = "OutputConfig"
            case sessionContext = "SessionContext"
            case tasksPriority = "TasksPriority"
            case sessionId = "SessionId"
            case extInfo = "ExtInfo"
        }
    }

    /// EditMedia返回参数结构体
    public struct EditMediaResponse: TCResponseModel {
        /// 编辑视频的任务 ID，可以通过该 ID 查询编辑任务（任务类型为 EditMedia）的状态。
        public let taskId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }

    /// 编辑视频
    ///
    /// 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：
    ///
    /// 1. 对点播中的一个文件进行剪辑，生成一个新的视频；
    /// 2. 对点播中的多个文件进行拼接，生成一个新的视频；
    /// 3. 对点播中的多个文件进行剪辑，然后再拼接，生成一个新的视频；
    /// 4. 对点播中的一个流，直接生成一个新的视频；
    /// 5. 对点播中的一个流进行剪辑，生成一个新的视频；
    /// 6. 对点播中的多个流进行拼接，生成一个新的视频；
    /// 7. 对点播中的多个流进行剪辑，然后拼接，生成一个新的视频。
    ///
    /// 对于生成的新视频，还可以指定生成后的视频是否要执行任务流。
    ///
    /// >当对直播流做剪辑、拼接等操作时，请确保流结束后再操作。否则生成的视频可能不完整。
    ///
    /// 如使用事件通知，事件通知的类型为 [视频编辑完成](https://cloud.tencent.com/document/product/266/33794)。
    @inlinable
    public func editMedia(_ input: EditMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditMediaResponse> {
        self.client.execute(action: "EditMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 编辑视频
    ///
    /// 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：
    ///
    /// 1. 对点播中的一个文件进行剪辑，生成一个新的视频；
    /// 2. 对点播中的多个文件进行拼接，生成一个新的视频；
    /// 3. 对点播中的多个文件进行剪辑，然后再拼接，生成一个新的视频；
    /// 4. 对点播中的一个流，直接生成一个新的视频；
    /// 5. 对点播中的一个流进行剪辑，生成一个新的视频；
    /// 6. 对点播中的多个流进行拼接，生成一个新的视频；
    /// 7. 对点播中的多个流进行剪辑，然后拼接，生成一个新的视频。
    ///
    /// 对于生成的新视频，还可以指定生成后的视频是否要执行任务流。
    ///
    /// >当对直播流做剪辑、拼接等操作时，请确保流结束后再操作。否则生成的视频可能不完整。
    ///
    /// 如使用事件通知，事件通知的类型为 [视频编辑完成](https://cloud.tencent.com/document/product/266/33794)。
    @inlinable
    public func editMedia(_ input: EditMediaRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditMediaResponse {
        try await self.client.execute(action: "EditMedia", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 编辑视频
    ///
    /// 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：
    ///
    /// 1. 对点播中的一个文件进行剪辑，生成一个新的视频；
    /// 2. 对点播中的多个文件进行拼接，生成一个新的视频；
    /// 3. 对点播中的多个文件进行剪辑，然后再拼接，生成一个新的视频；
    /// 4. 对点播中的一个流，直接生成一个新的视频；
    /// 5. 对点播中的一个流进行剪辑，生成一个新的视频；
    /// 6. 对点播中的多个流进行拼接，生成一个新的视频；
    /// 7. 对点播中的多个流进行剪辑，然后拼接，生成一个新的视频。
    ///
    /// 对于生成的新视频，还可以指定生成后的视频是否要执行任务流。
    ///
    /// >当对直播流做剪辑、拼接等操作时，请确保流结束后再操作。否则生成的视频可能不完整。
    ///
    /// 如使用事件通知，事件通知的类型为 [视频编辑完成](https://cloud.tencent.com/document/product/266/33794)。
    @inlinable
    public func editMedia(inputType: String, subAppId: UInt64? = nil, fileInfos: [EditMediaFileInfo]? = nil, streamInfos: [EditMediaStreamInfo]? = nil, definition: UInt64? = nil, procedureName: String? = nil, outputConfig: EditMediaOutputConfig? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditMediaResponse> {
        self.editMedia(.init(inputType: inputType, subAppId: subAppId, fileInfos: fileInfos, streamInfos: streamInfos, definition: definition, procedureName: procedureName, outputConfig: outputConfig, sessionContext: sessionContext, tasksPriority: tasksPriority, sessionId: sessionId, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }

    /// 编辑视频
    ///
    /// 对视频进行编辑（剪辑、拼接等），生成一个新的点播视频。编辑的功能包括：
    ///
    /// 1. 对点播中的一个文件进行剪辑，生成一个新的视频；
    /// 2. 对点播中的多个文件进行拼接，生成一个新的视频；
    /// 3. 对点播中的多个文件进行剪辑，然后再拼接，生成一个新的视频；
    /// 4. 对点播中的一个流，直接生成一个新的视频；
    /// 5. 对点播中的一个流进行剪辑，生成一个新的视频；
    /// 6. 对点播中的多个流进行拼接，生成一个新的视频；
    /// 7. 对点播中的多个流进行剪辑，然后拼接，生成一个新的视频。
    ///
    /// 对于生成的新视频，还可以指定生成后的视频是否要执行任务流。
    ///
    /// >当对直播流做剪辑、拼接等操作时，请确保流结束后再操作。否则生成的视频可能不完整。
    ///
    /// 如使用事件通知，事件通知的类型为 [视频编辑完成](https://cloud.tencent.com/document/product/266/33794)。
    @inlinable
    public func editMedia(inputType: String, subAppId: UInt64? = nil, fileInfos: [EditMediaFileInfo]? = nil, streamInfos: [EditMediaStreamInfo]? = nil, definition: UInt64? = nil, procedureName: String? = nil, outputConfig: EditMediaOutputConfig? = nil, sessionContext: String? = nil, tasksPriority: Int64? = nil, sessionId: String? = nil, extInfo: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditMediaResponse {
        try await self.editMedia(.init(inputType: inputType, subAppId: subAppId, fileInfos: fileInfos, streamInfos: streamInfos, definition: definition, procedureName: procedureName, outputConfig: outputConfig, sessionContext: sessionContext, tasksPriority: tasksPriority, sessionId: sessionId, extInfo: extInfo), region: region, logger: logger, on: eventLoop)
    }
}
