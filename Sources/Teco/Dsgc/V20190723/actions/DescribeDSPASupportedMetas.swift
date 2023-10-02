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

extension Dsgc {
    /// DescribeDSPASupportedMetas请求参数结构体
    public struct DescribeDSPASupportedMetasRequest: TCRequest {
        /// 元数据类型
        public let metaTypes: [String]?

        public init(metaTypes: [String]? = nil) {
            self.metaTypes = metaTypes
        }

        enum CodingKeys: String, CodingKey {
            case metaTypes = "MetaTypes"
        }
    }

    /// DescribeDSPASupportedMetas返回参数结构体
    public struct DescribeDSPASupportedMetasResponse: TCResponse {
        /// 支持的元数据类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let metas: [DSPAMetaType]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case metas = "Metas"
            case requestId = "RequestId"
        }
    }

    /// 拉取DSPA支持的Meta元数据类型
    ///
    /// 拉取DSPA支持的Meta元数据类型，返回包括：元数据类型，支持的元数据地域信息
    @inlinable
    public func describeDSPASupportedMetas(_ input: DescribeDSPASupportedMetasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPASupportedMetasResponse> {
        self.client.execute(action: "DescribeDSPASupportedMetas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 拉取DSPA支持的Meta元数据类型
    ///
    /// 拉取DSPA支持的Meta元数据类型，返回包括：元数据类型，支持的元数据地域信息
    @inlinable
    public func describeDSPASupportedMetas(_ input: DescribeDSPASupportedMetasRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPASupportedMetasResponse {
        try await self.client.execute(action: "DescribeDSPASupportedMetas", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 拉取DSPA支持的Meta元数据类型
    ///
    /// 拉取DSPA支持的Meta元数据类型，返回包括：元数据类型，支持的元数据地域信息
    @inlinable
    public func describeDSPASupportedMetas(metaTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDSPASupportedMetasResponse> {
        self.describeDSPASupportedMetas(.init(metaTypes: metaTypes), region: region, logger: logger, on: eventLoop)
    }

    /// 拉取DSPA支持的Meta元数据类型
    ///
    /// 拉取DSPA支持的Meta元数据类型，返回包括：元数据类型，支持的元数据地域信息
    @inlinable
    public func describeDSPASupportedMetas(metaTypes: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDSPASupportedMetasResponse {
        try await self.describeDSPASupportedMetas(.init(metaTypes: metaTypes), region: region, logger: logger, on: eventLoop)
    }
}