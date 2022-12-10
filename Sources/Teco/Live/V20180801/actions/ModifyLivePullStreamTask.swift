//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Live {
    /// 更新直播拉流任务
    ///
    /// 更新直播拉流任务。 
    /// 1. 不支持修改目标地址，如需推到新地址，请创建新任务。
    /// 2. 不支持修改拉流源类型，如需更换，请创建新任务。
    @inlinable
    public func modifyLivePullStreamTask(_ input: ModifyLivePullStreamTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < ModifyLivePullStreamTaskResponse > {
        self.client.execute(action: "ModifyLivePullStreamTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新直播拉流任务
    ///
    /// 更新直播拉流任务。 
    /// 1. 不支持修改目标地址，如需推到新地址，请创建新任务。
    /// 2. 不支持修改拉流源类型，如需更换，请创建新任务。
    @inlinable
    public func modifyLivePullStreamTask(_ input: ModifyLivePullStreamTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyLivePullStreamTaskResponse {
        try await self.client.execute(action: "ModifyLivePullStreamTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// ModifyLivePullStreamTask请求参数结构体
    public struct ModifyLivePullStreamTaskRequest: TCRequestModel {
        /// 任务Id。
        public let taskId: String
        
        /// 操作人姓名。
        public let `operator`: String
        
        /// 拉流源url列表。
        /// SourceType为直播（PullLivePushLive）只可以填1个，
        /// SourceType为点播（PullVodPushLive）可以填多个，上限30个。
        public let sourceUrls: [String]?
        
        /// 开始时间。
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let startTime: String?
        
        /// 结束时间，注意：
        /// 1. 结束时间必须大于开始时间；
        /// 2. 结束时间和开始时间必须大于当前时间；
        /// 3. 结束时间 和 开始时间 间隔必须小于七天。
        /// 使用UTC格式时间，
        /// 例如：2019-01-08T10:00:00Z。
        /// 注意：北京时间值为 UTC 时间值 + 8 小时，格式按照 ISO 8601 标准表示，详见 [ISO 日期格式说明](https://cloud.tencent.com/document/product/266/11732#I)。
        public let endTime: String?
        
        /// 点播拉流转推循环次数。
        /// -1：无限循环，直到任务结束。
        /// 0：不循环。
        /// >0：具体循环次数。次数和时间以先结束的为准。
        /// 注意：拉流源为点播，该配置生效。
        public let vodLoopTimes: Int64?
        
        /// 点播更新SourceUrls后的播放方式：
        /// ImmediateNewSource：立即从更新的拉流源开始播放；
        /// ContinueBreakPoint：从上次断流url源的断点处继续，结束后再使用新的拉流源。
        /// 注意：拉流源为点播，该配置生效。
        public let vodRefreshType: String?
        
        /// 任务状态：
        /// enable - 启用，
        /// pause - 暂停。
        public let status: String?
        
        /// 选择需要回调的事件（不填则回调全部）：
        /// TaskStart：任务启动回调，
        /// TaskExit：任务停止回调，
        /// VodSourceFileStart：从点播源文件开始拉流回调，
        /// VodSourceFileFinish：从点播源文件拉流结束回调，
        /// ResetTaskConfig：任务更新回调。
        public let callbackEvents: [String]?
        
        /// 自定义回调地址。
        /// 相关事件会回调到该地址。
        public let callbackUrl: String?
        
        /// 指定播放文件索引。
        /// 注意： 从1开始，不大于SourceUrls中文件个数。
        public let fileIndex: Int64?
        
        /// 指定播放文件偏移。
        /// 注意：
        /// 1. 单位：秒，配合FileIndex使用。
        public let offsetTime: Int64?
        
        /// 任务备注。
        public let comment: String?
        
        /// 备源的类型：
        /// PullLivePushLive -直播，
        /// PullVodPushLive -点播。
        /// 注意：
        /// 1. 仅当主源类型为直播源时，备源才会生效。
        /// 2. 将该参数置为空，则可将任务去除备源信息。
        /// 3. 主直播源拉流中断时，自动使用备源进行拉流。
        /// 4. 如果备源为点播文件时，则每次轮播完点播文件就检查主源是否恢复，如果主源恢复则自动切回到主源，否则继续拉备源。
        public let backupSourceType: String?
        
        /// 备源 URL。
        /// 只允许填一个备源 URL
        public let backupSourceUrl: String?
        
        /// 水印信息列表。
        /// 注意：
        /// 1. 最多支持4个不同位置的水印。
        /// 2. 水印图片 URL 请使用合法外网可访问地址。
        /// 3. 支持的水印图片格式：png，jpg等。
        /// 4. 轮播任务修改水印后，轮播到下一个文件时新水印生效。
        /// 5. 直播源任务修改水印后，水印立即生效。
        /// 6. 清除水印时，需携带该水印列表参数，内容为空数组。
        /// 7. 暂不支持动图水印。
        public let watermarkList: [PullPushWatermarkInfo]?
        
        /// 点播源是否启用本地推流模式，默认0，不启用。
        /// 0 - 不启用。
        /// 1 - 启用。
        /// 注意：启用本地模式后，会将源列表中的 MP4 文件进行本地下载，优先使用本地已下载文件进行推流，提高点播源推流稳定性。使用本地下载文件推流时，会产生增值费用。
        public let vodLocalMode: Int64?
        
        public init (taskId: String, `operator`: String, sourceUrls: [String]?, startTime: String?, endTime: String?, vodLoopTimes: Int64?, vodRefreshType: String?, status: String?, callbackEvents: [String]?, callbackUrl: String?, fileIndex: Int64?, offsetTime: Int64?, comment: String?, backupSourceType: String?, backupSourceUrl: String?, watermarkList: [PullPushWatermarkInfo]?, vodLocalMode: Int64?) {
            self.taskId = taskId
            self.`operator` = `operator`
            self.sourceUrls = sourceUrls
            self.startTime = startTime
            self.endTime = endTime
            self.vodLoopTimes = vodLoopTimes
            self.vodRefreshType = vodRefreshType
            self.status = status
            self.callbackEvents = callbackEvents
            self.callbackUrl = callbackUrl
            self.fileIndex = fileIndex
            self.offsetTime = offsetTime
            self.comment = comment
            self.backupSourceType = backupSourceType
            self.backupSourceUrl = backupSourceUrl
            self.watermarkList = watermarkList
            self.vodLocalMode = vodLocalMode
        }
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case `operator` = "Operator"
            case sourceUrls = "SourceUrls"
            case startTime = "StartTime"
            case endTime = "EndTime"
            case vodLoopTimes = "VodLoopTimes"
            case vodRefreshType = "VodRefreshType"
            case status = "Status"
            case callbackEvents = "CallbackEvents"
            case callbackUrl = "CallbackUrl"
            case fileIndex = "FileIndex"
            case offsetTime = "OffsetTime"
            case comment = "Comment"
            case backupSourceType = "BackupSourceType"
            case backupSourceUrl = "BackupSourceUrl"
            case watermarkList = "WatermarkList"
            case vodLocalMode = "VodLocalMode"
        }
    }
    
    /// ModifyLivePullStreamTask返回参数结构体
    public struct ModifyLivePullStreamTaskResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }
}
