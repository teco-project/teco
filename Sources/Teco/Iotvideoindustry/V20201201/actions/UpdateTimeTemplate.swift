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

extension Iotvideoindustry {
    /// 更新时间模板
    ///
    /// 本接口(UpdateTimeTemplate)用于更新时间模板。
    @inlinable
    public func updateTimeTemplate(_ input: UpdateTimeTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < UpdateTimeTemplateResponse > {
        self.client.execute(action: "UpdateTimeTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 更新时间模板
    ///
    /// 本接口(UpdateTimeTemplate)用于更新时间模板。
    @inlinable
    public func updateTimeTemplate(_ input: UpdateTimeTemplateRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> UpdateTimeTemplateResponse {
        try await self.client.execute(action: "UpdateTimeTemplate", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
    
    /// UpdateTimeTemplate请求参数结构体
    public struct UpdateTimeTemplateRequest: TCRequestModel {
        /// 时间模板ID
        public let templateId: String
        
        /// 时间模板名称
        public let name: String?
        
        /// 是否全时录制，即7*24小时录制。
        /// 0：非全时录制；1：全时录制。默认1
        public let isAllWeek: Int64?
        
        /// 录制时间片段
        public let timeTemplateSpecs: [TimeTemplateSpec]?
        
        public init (templateId: String, name: String?, isAllWeek: Int64?, timeTemplateSpecs: [TimeTemplateSpec]?) {
            self.templateId = templateId
            self.name = name
            self.isAllWeek = isAllWeek
            self.timeTemplateSpecs = timeTemplateSpecs
        }
        
        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case name = "Name"
            case isAllWeek = "IsAllWeek"
            case timeTemplateSpecs = "TimeTemplateSpecs"
        }
    }
    
    /// UpdateTimeTemplate返回参数结构体
    public struct UpdateTimeTemplateResponse: TCResponseModel {
        /// 操作结果，“OK”表示成功，其他表示失败。
        public let status: String
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case status = "Status"
            case requestId = "RequestId"
        }
    }
}