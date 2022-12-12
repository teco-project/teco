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
    /// CreateRecordTask请求参数结构体
    public struct CreateRecordTaskRequest: TCRequestModel {
        /// 流名称。
        public let streamName: String
        
        /// 推流域名。
        public let domainName: String
        
        /// 推流路径。
        public let appName: String
        
        /// 录制任务结束时间，Unix时间戳。设置时间必须大于StartTime及当前时间，且EndTime - StartTime不能超过24小时。
        public let endTime: UInt64
        
        /// 录制任务开始时间，Unix时间戳。如果不填表示立即启动录制。StartTime不能超过当前时间+6天。
        public let startTime: UInt64?
        
        /// 推流类型，默认0。取值：
        /// 0-直播推流。
        /// 1-合成流，即 A+B=C 类型混流。
        public let streamType: UInt64?
        
        /// 录制模板ID，CreateLiveRecordTemplate 返回值。如果不填或者传入错误ID，则默认录制HLS格式、永久存储。
        public let templateId: UInt64?
        
        /// 扩展字段，暂无定义。默认为空。
        public let `extension`: String?
        
        public init (streamName: String, domainName: String, appName: String, endTime: UInt64, startTime: UInt64? = nil, streamType: UInt64? = nil, templateId: UInt64? = nil, `extension`: String? = nil) {
            self.streamName = streamName
            self.domainName = domainName
            self.appName = appName
            self.endTime = endTime
            self.startTime = startTime
            self.streamType = streamType
            self.templateId = templateId
            self.`extension` = `extension`
        }
        
        enum CodingKeys: String, CodingKey {
            case streamName = "StreamName"
            case domainName = "DomainName"
            case appName = "AppName"
            case endTime = "EndTime"
            case startTime = "StartTime"
            case streamType = "StreamType"
            case templateId = "TemplateId"
            case `extension` = "Extension"
        }
    }
    
    /// CreateRecordTask返回参数结构体
    public struct CreateRecordTaskResponse: TCResponseModel {
        /// 任务ID，全局唯一标识录制任务。返回TaskId字段说明录制任务创建成功。
        public let taskId: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case requestId = "RequestId"
        }
    }
    
    /// 创建录制任务（新）
    ///
    /// 创建一个在指定时间启动、结束的录制任务，并使用指定录制模板ID对应的配置进行录制。
    /// - 使用前提
    /// 1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    /// 2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2837)。
    /// - 注意事项
    /// 1. 断流会结束当前录制并生成录制文件。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常录制，与是否多次推、断流无关。
    /// 2. 使用上避免创建时间段相互重叠的录制任务。若同一条流当前存在多个时段重叠的任务，为避免重复录制系统将启动最多3个录制任务。
    /// 3. 创建的录制任务记录在平台侧只保留3个月。
    /// 4. 当前录制任务管理API（[CreateRecordTask](https://cloud.tencent.com/document/product/267/45983)/[StopRecordTask](https://cloud.tencent.com/document/product/267/45981)/[DeleteRecordTask](https://cloud.tencent.com/document/product/267/45982)）与旧API（CreateLiveRecord/StopLiveRecord/DeleteLiveRecord）不兼容，两套接口不能混用。
    /// 5. 避免 创建录制任务 与 推流 操作同时进行，可能导致因录制任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。
    @inlinable
    public func createRecordTask(_ input: CreateRecordTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < CreateRecordTaskResponse > {
        self.client.execute(action: "CreateRecordTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 创建录制任务（新）
    ///
    /// 创建一个在指定时间启动、结束的录制任务，并使用指定录制模板ID对应的配置进行录制。
    /// - 使用前提
    /// 1. 录制文件存放于点播平台，所以用户如需使用录制功能，需首先自行开通点播服务。
    /// 2. 录制文件存放后相关费用（含存储以及下行播放流量）按照点播平台计费方式收取，具体请参考 [对应文档](https://cloud.tencent.com/document/product/266/2837)。
    /// - 注意事项
    /// 1. 断流会结束当前录制并生成录制文件。在结束时间到达之前任务仍然有效，期间只要正常推流都会正常录制，与是否多次推、断流无关。
    /// 2. 使用上避免创建时间段相互重叠的录制任务。若同一条流当前存在多个时段重叠的任务，为避免重复录制系统将启动最多3个录制任务。
    /// 3. 创建的录制任务记录在平台侧只保留3个月。
    /// 4. 当前录制任务管理API（[CreateRecordTask](https://cloud.tencent.com/document/product/267/45983)/[StopRecordTask](https://cloud.tencent.com/document/product/267/45981)/[DeleteRecordTask](https://cloud.tencent.com/document/product/267/45982)）与旧API（CreateLiveRecord/StopLiveRecord/DeleteLiveRecord）不兼容，两套接口不能混用。
    /// 5. 避免 创建录制任务 与 推流 操作同时进行，可能导致因录制任务未生效而引起任务延迟启动问题，两者操作间隔建议大于3秒。
    @inlinable
    public func createRecordTask(_ input: CreateRecordTaskRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateRecordTaskResponse {
        try await self.client.execute(action: "CreateRecordTask", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
