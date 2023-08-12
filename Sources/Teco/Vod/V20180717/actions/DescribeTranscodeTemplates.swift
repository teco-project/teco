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

import Logging
import NIOCore
import TecoCore
import TecoPaginationHelpers

extension Vod {
    /// DescribeTranscodeTemplates请求参数结构体
    public struct DescribeTranscodeTemplatesRequest: TCPaginatedRequest {
        /// <b>点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。</b>
        public let subAppId: UInt64?

        /// 转码模板唯一标识过滤条件，数组长度限制：100。
        public let definitions: [Int64]?

        /// 模板类型过滤条件，可选值：
        /// <li>Preset：系统预置模板；</li>
        /// <li>Custom：用户自定义模板。</li>
        public let type: String?

        /// 封装格式过滤条件，可选值：
        /// <li>Video：视频格式，可以同时包含视频流和音频流的封装格式板；</li>
        /// <li>PureAudio：纯音频格式，只能包含音频流的封装格式。</li>
        public let containerType: String?

        /// 极速高清过滤条件，用于过滤普通转码或极速高清转码模板，可选值：
        /// <li>Common：普通转码模板；</li>
        /// <li>TEHD：极速高清模板。</li>
        public let tehdType: String?

        /// 分页偏移量，默认值：0。
        public let offset: UInt64?

        /// 返回记录条数，默认值：10，最大值：100。
        public let limit: UInt64?

        public init(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, containerType: String? = nil, tehdType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil) {
            self.subAppId = subAppId
            self.definitions = definitions
            self.type = type
            self.containerType = containerType
            self.tehdType = tehdType
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case subAppId = "SubAppId"
            case definitions = "Definitions"
            case type = "Type"
            case containerType = "ContainerType"
            case tehdType = "TEHDType"
            case offset = "Offset"
            case limit = "Limit"
        }

        /// Compute the next request based on API response.
        public func makeNextRequest(with response: DescribeTranscodeTemplatesResponse) -> DescribeTranscodeTemplatesRequest? {
            guard !response.getItems().isEmpty else {
                return nil
            }
            return DescribeTranscodeTemplatesRequest(subAppId: self.subAppId, definitions: self.definitions, type: self.type, containerType: self.containerType, tehdType: self.tehdType, offset: (self.offset ?? 0) + .init(response.getItems().count), limit: self.limit)
        }
    }

    /// DescribeTranscodeTemplates返回参数结构体
    public struct DescribeTranscodeTemplatesResponse: TCPaginatedResponse {
        /// 符合过滤条件的记录总数。
        public let totalCount: UInt64

        /// 转码模板详情列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let transcodeTemplateSet: [TranscodeTemplate]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case transcodeTemplateSet = "TranscodeTemplateSet"
            case requestId = "RequestId"
        }

        /// Extract the returned ``TranscodeTemplate`` list from the paginated response.
        public func getItems() -> [TranscodeTemplate] {
            self.transcodeTemplateSet ?? []
        }

        /// Extract the total count from the paginated response.
        public func getTotalCount() -> UInt64? {
            self.totalCount
        }
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeTranscodeTemplates(_ input: DescribeTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeTemplatesResponse> {
        self.client.execute(action: "DescribeTranscodeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeTranscodeTemplates(_ input: DescribeTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeTemplatesResponse {
        try await self.client.execute(action: "DescribeTranscodeTemplates", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeTranscodeTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, containerType: String? = nil, tehdType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeTranscodeTemplatesResponse> {
        self.describeTranscodeTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, containerType: containerType, tehdType: tehdType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeTranscodeTemplates(subAppId: UInt64? = nil, definitions: [Int64]? = nil, type: String? = nil, containerType: String? = nil, tehdType: String? = nil, offset: UInt64? = nil, limit: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeTranscodeTemplatesResponse {
        try await self.describeTranscodeTemplates(.init(subAppId: subAppId, definitions: definitions, type: type, containerType: containerType, tehdType: tehdType, offset: offset, limit: limit), region: region, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable
    public func describeTranscodeTemplatesPaginated(_ input: DescribeTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<(UInt64?, [TranscodeTemplate])> {
        self.client.paginate(input: input, region: region, command: self.describeTranscodeTemplates, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    @inlinable @discardableResult
    public func describeTranscodeTemplatesPaginated(_ input: DescribeTranscodeTemplatesRequest, region: TCRegion? = nil, onResponse: @escaping (DescribeTranscodeTemplatesResponse, EventLoop) -> EventLoopFuture<Bool>, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<Void> {
        self.client.paginate(input: input, region: region, command: self.describeTranscodeTemplates, callback: onResponse, logger: logger, on: eventLoop)
    }

    /// 获取转码模板列表
    ///
    /// 根据转码模板唯一标识，获取转码模板详情列表。返回结果包含符合条件的所有用户自定义模板及[系统预置转码模板](https://cloud.tencent.com/document/product/266/33476#.E9.A2.84.E7.BD.AE.E8.BD.AC.E7.A0.81.E6.A8.A1.E6.9D.BF)。
    ///
    /// - Returns: `AsyncSequence`s of ``TranscodeTemplate`` and ``DescribeTranscodeTemplatesResponse`` that can be iterated over asynchronously on demand.
    @inlinable
    public func describeTranscodeTemplatesPaginator(_ input: DescribeTranscodeTemplatesRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> TCClient.PaginatorSequences<DescribeTranscodeTemplatesRequest> {
        TCClient.Paginator.makeAsyncSequences(input: input, region: region, command: self.describeTranscodeTemplates, logger: logger, on: eventLoop)
    }
}
