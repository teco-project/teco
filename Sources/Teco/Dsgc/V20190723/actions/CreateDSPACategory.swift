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
    /// CreateDSPACategory请求参数结构体
    public struct CreateDSPACategoryRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 敏感数据分类名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        public let name: String

        public init(dspaId: String, name: String) {
            self.dspaId = dspaId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case name = "Name"
        }
    }

    /// CreateDSPACategory返回参数结构体
    public struct CreateDSPACategoryResponse: TCResponse {
        /// 敏感数据分类ID
        public let categoryId: Int64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case categoryId = "CategoryId"
            case requestId = "RequestId"
        }
    }

    /// 新增分类
    ///
    /// 新增分类，单个用户最多允许创建100个数据分类。
    @inlinable
    public func createDSPACategory(_ input: CreateDSPACategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPACategoryResponse> {
        self.client.execute(action: "CreateDSPACategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增分类
    ///
    /// 新增分类，单个用户最多允许创建100个数据分类。
    @inlinable
    public func createDSPACategory(_ input: CreateDSPACategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPACategoryResponse {
        try await self.client.execute(action: "CreateDSPACategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增分类
    ///
    /// 新增分类，单个用户最多允许创建100个数据分类。
    @inlinable
    public func createDSPACategory(dspaId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateDSPACategoryResponse> {
        self.createDSPACategory(.init(dspaId: dspaId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 新增分类
    ///
    /// 新增分类，单个用户最多允许创建100个数据分类。
    @inlinable
    public func createDSPACategory(dspaId: String, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateDSPACategoryResponse {
        try await self.createDSPACategory(.init(dspaId: dspaId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
