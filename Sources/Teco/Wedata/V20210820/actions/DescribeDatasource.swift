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

extension Wedata {
    /// DescribeDatasource请求参数结构体
    public struct DescribeDatasourceRequest: TCRequestModel {
        /// 对象唯一ID
        public let id: UInt64

        public init(id: UInt64) {
            self.id = id
        }

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// DescribeDatasource返回参数结构体
    public struct DescribeDatasourceResponse: TCResponseModel {
        /// 数据源对象
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let data: DataSourceInfo?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case data = "Data"
            case requestId = "RequestId"
        }
    }

    /// 数据源管理-数据源详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDatasource(_ input: DescribeDatasourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasourceResponse> {
        self.client.execute(action: "DescribeDatasource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 数据源管理-数据源详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDatasource(_ input: DescribeDatasourceRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasourceResponse {
        try await self.client.execute(action: "DescribeDatasource", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 数据源管理-数据源详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDatasource(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDatasourceResponse> {
        self.describeDatasource(.init(id: id), region: region, logger: logger, on: eventLoop)
    }

    /// 数据源管理-数据源详情【Beta版本】
    ///
    /// <p style="color:red;">[注意：该Beta版本只满足广州区部分白名单客户使用]</p>
    /// 数据源详情
    @inlinable
    public func describeDatasource(id: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDatasourceResponse {
        try await self.describeDatasource(.init(id: id), region: region, logger: logger, on: eventLoop)
    }
}
