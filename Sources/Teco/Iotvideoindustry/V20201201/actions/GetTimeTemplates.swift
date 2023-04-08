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

extension Iotvideoindustry {
    /// GetTimeTemplates请求参数结构体
    public struct GetTimeTemplatesRequest: TCRequestModel {
        public init() {
        }
    }

    /// GetTimeTemplates返回参数结构体
    public struct GetTimeTemplatesResponse: TCResponseModel {
        /// 时间模板列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let templates: [TimeTemplateItem]?

        /// 时间模板总数
        public let totalCount: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case totalCount = "TotalCount"
            case requestId = "RequestId"
        }
    }

    /// 获取时间模板列表
    ///
    /// 本接口(GetTimeTemplates)用于获取时间模板列表。
    @inlinable
    public func getTimeTemplates(_ input: GetTimeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTimeTemplatesResponse> {
        self.client.execute(action: "GetTimeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取时间模板列表
    ///
    /// 本接口(GetTimeTemplates)用于获取时间模板列表。
    @inlinable
    public func getTimeTemplates(_ input: GetTimeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTimeTemplatesResponse {
        try await self.client.execute(action: "GetTimeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取时间模板列表
    ///
    /// 本接口(GetTimeTemplates)用于获取时间模板列表。
    @inlinable
    public func getTimeTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetTimeTemplatesResponse> {
        self.getTimeTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取时间模板列表
    ///
    /// 本接口(GetTimeTemplates)用于获取时间模板列表。
    @inlinable
    public func getTimeTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetTimeTemplatesResponse {
        try await self.getTimeTemplates(.init(), region: region, logger: logger, on: eventLoop)
    }
}
