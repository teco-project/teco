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

extension Iotvideoindustry {
    /// CreateTimeTemplate请求参数结构体
    public struct CreateTimeTemplateRequest: TCRequestModel {
        /// 时间模板名称
        public let name: String

        /// 是否为每周全时录制（即7*24h录制），0：非全时录制，1；全时录制，默认0
        public let isAllWeek: Int64

        /// 当IsAllWeek为0时必选，用于描述模板的各个时间片段
        public let timeTemplateSpecs: [TimeTemplateSpec]?

        public init(name: String, isAllWeek: Int64, timeTemplateSpecs: [TimeTemplateSpec]? = nil) {
            self.name = name
            self.isAllWeek = isAllWeek
            self.timeTemplateSpecs = timeTemplateSpecs
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case isAllWeek = "IsAllWeek"
            case timeTemplateSpecs = "TimeTemplateSpecs"
        }
    }

    /// CreateTimeTemplate返回参数结构体
    public struct CreateTimeTemplateResponse: TCResponseModel {
        /// 时间模板ID
        public let templateId: String

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templateId = "TemplateId"
            case requestId = "RequestId"
        }
    }

    /// 创建时间模板
    ///
    /// 本接口(CreateTimeTemplate) 用于根据模板描述的具体录制时间片段，创建定制化的时间模板。
    @inlinable
    public func createTimeTemplate(_ input: CreateTimeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTimeTemplateResponse> {
        self.client.execute(action: "CreateTimeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建时间模板
    ///
    /// 本接口(CreateTimeTemplate) 用于根据模板描述的具体录制时间片段，创建定制化的时间模板。
    @inlinable
    public func createTimeTemplate(_ input: CreateTimeTemplateRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTimeTemplateResponse {
        try await self.client.execute(action: "CreateTimeTemplate", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建时间模板
    ///
    /// 本接口(CreateTimeTemplate) 用于根据模板描述的具体录制时间片段，创建定制化的时间模板。
    @inlinable
    public func createTimeTemplate(name: String, isAllWeek: Int64, timeTemplateSpecs: [TimeTemplateSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateTimeTemplateResponse> {
        self.createTimeTemplate(.init(name: name, isAllWeek: isAllWeek, timeTemplateSpecs: timeTemplateSpecs), region: region, logger: logger, on: eventLoop)
    }

    /// 创建时间模板
    ///
    /// 本接口(CreateTimeTemplate) 用于根据模板描述的具体录制时间片段，创建定制化的时间模板。
    @inlinable
    public func createTimeTemplate(name: String, isAllWeek: Int64, timeTemplateSpecs: [TimeTemplateSpec]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateTimeTemplateResponse {
        try await self.createTimeTemplate(.init(name: name, isAllWeek: isAllWeek, timeTemplateSpecs: timeTemplateSpecs), region: region, logger: logger, on: eventLoop)
    }
}
