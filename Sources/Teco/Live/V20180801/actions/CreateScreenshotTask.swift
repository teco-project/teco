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

extension Live {
    /// 创建截图任务
    ///
    /// 创建一个在指定时间启动、结束的截图任务，并使用指定截图模板ID对应的配置进行截图。
    /// - 注意事项
    /// 1. 断流会结束当前截图。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常截图，与是否多次推、断流无关。
    /// 2. 使用上避免创建时间段相互重叠的截图任务。若同一条流当前存在多个时段重叠的任务，为避免重复系统将启动最多3个截图任务。
    /// 3. 创建的截图任务记录在平台侧只保留3个月。
    /// 4. 当前截图任务管理API（CreateScreenshotTask/StopScreenshotTask/DeleteScreenshotTask）与旧API（CreateLiveInstantSnapshot/StopLiveInstantSnapshot）不兼容，两套接口不能混用。
    /// 5. 避免 创建截图任务 与 推流 操作同时进行，可能导致因截图任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。
    @inlinable
    public func createScreenshotTask(_ input: CreateScreenshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateScreenshotTaskResponse > {
        self.client.execute(action: "CreateScreenshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建截图任务
    ///
    /// 创建一个在指定时间启动、结束的截图任务，并使用指定截图模板ID对应的配置进行截图。
    /// - 注意事项
    /// 1. 断流会结束当前截图。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常截图，与是否多次推、断流无关。
    /// 2. 使用上避免创建时间段相互重叠的截图任务。若同一条流当前存在多个时段重叠的任务，为避免重复系统将启动最多3个截图任务。
    /// 3. 创建的截图任务记录在平台侧只保留3个月。
    /// 4. 当前截图任务管理API（CreateScreenshotTask/StopScreenshotTask/DeleteScreenshotTask）与旧API（CreateLiveInstantSnapshot/StopLiveInstantSnapshot）不兼容，两套接口不能混用。
    /// 5. 避免 创建截图任务 与 推流 操作同时进行，可能导致因截图任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。
    @inlinable
    public func createScreenshotTask(_ input: CreateScreenshotTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateScreenshotTaskResponse {
        try await self.client.execute(action: "CreateScreenshotTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// CreateScreenshotTask请求参数结构体
    public struct CreateScreenshotTaskRequest: TCRequestModel {
        /// 流名称。
        public let streamName: String
        
        /// 推流域名。
        public let domainName: String
        
        /// 推流路径。
        public let appName: String
        
        /// 截图任务结束时间，Unix时间戳。设置时间必须大于StartTime及当前时间，且EndTime - StartTime不能超过24小时。
        public let endTime: UInt64
        
        /// 截图模板ID，CreateLiveSnapshotTemplate 返回值。如果传入错误ID，则不拉起截图。
        public let templateId: UInt64
        
        /// 截图任务开始时间，Unix时间戳。如果不填表示立即启动截图。StartTime不能超过当前时间+6天。
        public let startTime: UInt64?
        
        /// 推流类型，默认0。取值：
        /// 0-直播推流。
        /// 1-合成流，即 A+B=C 类型混流。
        public let streamType: UInt64?
        
        /// 扩展字段，暂无定义。默认为空。
        public let `extension`: String?
        
        public init (streamName: String, domainName: String, appName: String, endTime: UInt64, templateId: UInt64, startTime: UInt64?, streamType: UInt64?, `extension`: String?) {
            self.streamName = streamName
            self.domainName = domainName
            self.appName = appName
            self.endTime = endTime
            self.templateId = templateId
            self.startTime = startTime
            self.streamType = streamType
            self.`extension` = `extension`
        }
        
        enum CodingKeys: String, CodingKey {
            case streamName = "StreamName"
            case domainName = "DomainName"
            case appName = "AppName"
            case endTime = "EndTime"
            case templateId = "TemplateId"
            case startTime = "StartTime"
            case streamType = "StreamType"
            case `extension` = "Extension"
        }
    }
    
    /// CreateScreenshotTask返回参数结构体
    public struct CreateScreenshotTaskResponse: TCResponseModel {
        /// 任务ID，全局唯一标识截图任务。返回TaskId字段说明截图任务创建成功。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
}