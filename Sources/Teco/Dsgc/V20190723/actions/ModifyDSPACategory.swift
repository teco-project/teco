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
    /// ModifyDSPACategory请求参数结构体
    public struct ModifyDSPACategoryRequest: TCRequest {
        /// DSPA实例ID
        public let dspaId: String

        /// 数据分类ID
        public let categoryId: Int64

        /// 敏感数据分类名称，1-60个字符，仅允许输入中文、英文字母、数字、'_'、'-'，并且开头和结尾需为中文、英文字母或者数字，Name不可重复
        public let name: String

        public init(dspaId: String, categoryId: Int64, name: String) {
            self.dspaId = dspaId
            self.categoryId = categoryId
            self.name = name
        }

        enum CodingKeys: String, CodingKey {
            case dspaId = "DspaId"
            case categoryId = "CategoryId"
            case name = "Name"
        }
    }

    /// ModifyDSPACategory返回参数结构体
    public struct ModifyDSPACategoryResponse: TCResponse {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 修改DSPA分类
    ///
    /// 修改分类，内置分类不支持修改。
    @inlinable @discardableResult
    public func modifyDSPACategory(_ input: ModifyDSPACategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPACategoryResponse> {
        self.client.execute(action: "ModifyDSPACategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 修改DSPA分类
    ///
    /// 修改分类，内置分类不支持修改。
    @inlinable @discardableResult
    public func modifyDSPACategory(_ input: ModifyDSPACategoryRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPACategoryResponse {
        try await self.client.execute(action: "ModifyDSPACategory", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 修改DSPA分类
    ///
    /// 修改分类，内置分类不支持修改。
    @inlinable @discardableResult
    public func modifyDSPACategory(dspaId: String, categoryId: Int64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<ModifyDSPACategoryResponse> {
        self.modifyDSPACategory(.init(dspaId: dspaId, categoryId: categoryId, name: name), region: region, logger: logger, on: eventLoop)
    }

    /// 修改DSPA分类
    ///
    /// 修改分类，内置分类不支持修改。
    @inlinable @discardableResult
    public func modifyDSPACategory(dspaId: String, categoryId: Int64, name: String, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> ModifyDSPACategoryResponse {
        try await self.modifyDSPACategory(.init(dspaId: dspaId, categoryId: categoryId, name: name), region: region, logger: logger, on: eventLoop)
    }
}
