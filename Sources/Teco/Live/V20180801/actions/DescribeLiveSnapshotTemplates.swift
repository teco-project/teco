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

extension Live {
    /// DescribeLiveSnapshotTemplates请求参数结构体
    public struct DescribeLiveSnapshotTemplatesRequest: TCRequestModel {
        public init() {
        }
    }

    /// DescribeLiveSnapshotTemplates返回参数结构体
    public struct DescribeLiveSnapshotTemplatesResponse: TCResponseModel {
        /// 截图模板列表。
        public let templates: [SnapshotTemplateInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case templates = "Templates"
            case requestId = "RequestId"
        }
    }

    /// 获取截图模板列表
    ///
    /// 获取截图模板列表。
    @inlinable
    public func describeLiveSnapshotTemplates(_ input: DescribeLiveSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveSnapshotTemplatesResponse> {
        self.client.execute(action: "DescribeLiveSnapshotTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取截图模板列表
    ///
    /// 获取截图模板列表。
    @inlinable
    public func describeLiveSnapshotTemplates(_ input: DescribeLiveSnapshotTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveSnapshotTemplatesResponse {
        try await self.client.execute(action: "DescribeLiveSnapshotTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取截图模板列表
    ///
    /// 获取截图模板列表。
    @inlinable
    public func describeLiveSnapshotTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeLiveSnapshotTemplatesResponse> {
        self.describeLiveSnapshotTemplates(DescribeLiveSnapshotTemplatesRequest(), region: region, logger: logger, on: eventLoop)
    }

    /// 获取截图模板列表
    ///
    /// 获取截图模板列表。
    @inlinable
    public func describeLiveSnapshotTemplates(region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeLiveSnapshotTemplatesResponse {
        try await self.describeLiveSnapshotTemplates(DescribeLiveSnapshotTemplatesRequest(), region: region, logger: logger, on: eventLoop)
    }
}
