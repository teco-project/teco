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

extension Vod {
    /// CreateClass请求参数结构体
    public struct CreateClassRequest: TCRequest {
        /// 父类 ID，一级分类填写 -1。
        public let parentId: Int64

        /// 分类名称，长度限制：1-64 个字符。
        public let className: String

        /// **点播[子应用](/document/product/266/14574) ID。如果要访问子应用中的资源，则将该字段填写为子应用 ID；否则无需填写该字段。**
        public let subAppId: UInt64?

        public init(parentId: Int64, className: String, subAppId: UInt64? = nil) {
            self.parentId = parentId
            self.className = className
            self.subAppId = subAppId
        }

        enum CodingKeys: String, CodingKey {
            case parentId = "ParentId"
            case className = "ClassName"
            case subAppId = "SubAppId"
        }
    }

    /// CreateClass返回参数结构体
    public struct CreateClassResponse: TCResponse {
        /// 分类 ID
        public let classId: UInt64

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case classId = "ClassId"
            case requestId = "RequestId"
        }
    }

    /// 创建分类
    ///
    /// * 用于对媒体进行分类管理；
    /// * 该接口不影响既有媒体的分类，如需修改媒体分类，请调用[修改媒体文件属性](/document/product/266/31762)接口。
    /// * 分类层次不可超过 4 层。
    /// * 每个分类的子类数量不可超过 500 个。
    @inlinable
    public func createClass(_ input: CreateClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClassResponse> {
        self.client.execute(action: "CreateClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 创建分类
    ///
    /// * 用于对媒体进行分类管理；
    /// * 该接口不影响既有媒体的分类，如需修改媒体分类，请调用[修改媒体文件属性](/document/product/266/31762)接口。
    /// * 分类层次不可超过 4 层。
    /// * 每个分类的子类数量不可超过 500 个。
    @inlinable
    public func createClass(_ input: CreateClassRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClassResponse {
        try await self.client.execute(action: "CreateClass", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 创建分类
    ///
    /// * 用于对媒体进行分类管理；
    /// * 该接口不影响既有媒体的分类，如需修改媒体分类，请调用[修改媒体文件属性](/document/product/266/31762)接口。
    /// * 分类层次不可超过 4 层。
    /// * 每个分类的子类数量不可超过 500 个。
    @inlinable
    public func createClass(parentId: Int64, className: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<CreateClassResponse> {
        self.createClass(.init(parentId: parentId, className: className, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }

    /// 创建分类
    ///
    /// * 用于对媒体进行分类管理；
    /// * 该接口不影响既有媒体的分类，如需修改媒体分类，请调用[修改媒体文件属性](/document/product/266/31762)接口。
    /// * 分类层次不可超过 4 层。
    /// * 每个分类的子类数量不可超过 500 个。
    @inlinable
    public func createClass(parentId: Int64, className: String, subAppId: UInt64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> CreateClassResponse {
        try await self.createClass(.init(parentId: parentId, className: className, subAppId: subAppId), region: region, logger: logger, on: eventLoop)
    }
}
