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

extension Lcic {
    /// DescribeDocuments请求参数结构体
    public struct DescribeDocumentsRequest: TCRequest {
        /// 学校id
        public let schoolId: UInt64

        /// 分页查询当前页数，从1开始递增
        public let page: Int64

        /// 每页数据量，最大1000
        public let limit: Int64

        /// 课件权限。[0]：获取owner的私有课件；[1]：获取owner的公开课件; [0,1]：则获取owner的私有课件和公开课件；[2]：获取owner的私有课件和所有人(包括owner)的公开课件
        public let permission: [UInt64]

        /// 课件所有者的user_id，不填默认获取school_id下所有课件
        public let owner: String?

        /// 课件名称搜索词
        public let keyword: String?

        /// 课件id列表，从列表中查询，忽略错误的id
        public let documentId: [String]?

        public init(schoolId: UInt64, page: Int64, limit: Int64, permission: [UInt64], owner: String? = nil, keyword: String? = nil, documentId: [String]? = nil) {
            self.schoolId = schoolId
            self.page = page
            self.limit = limit
            self.permission = permission
            self.owner = owner
            self.keyword = keyword
            self.documentId = documentId
        }

        enum CodingKeys: String, CodingKey {
            case schoolId = "SchoolId"
            case page = "Page"
            case limit = "Limit"
            case permission = "Permission"
            case owner = "Owner"
            case keyword = "Keyword"
            case documentId = "DocumentId"
        }
    }

    /// DescribeDocuments返回参数结构体
    public struct DescribeDocumentsResponse: TCResponse {
        /// 符合查询条件文档总数
        public let total: Int64

        /// 文档信息列表
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let documents: [DocumentInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case total = "Total"
            case documents = "Documents"
            case requestId = "RequestId"
        }
    }

    /// 批量获取文档信息【已废弃】
    ///
    /// 批量获取文档信息（已废弃，替代接口BatchDescribeDocument）
    @available(*, unavailable, message: "有新接口替换")
    @inlinable
    public func describeDocuments(_ input: DescribeDocumentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentsResponse> {
        fatalError("'DescribeDocuments' is no longer available.")
    }

    /// 批量获取文档信息【已废弃】
    ///
    /// 批量获取文档信息（已废弃，替代接口BatchDescribeDocument）
    @available(*, unavailable, message: "有新接口替换")
    @inlinable
    public func describeDocuments(_ input: DescribeDocumentsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentsResponse {
        fatalError("'DescribeDocuments' is no longer available.")
    }

    /// 批量获取文档信息【已废弃】
    ///
    /// 批量获取文档信息（已废弃，替代接口BatchDescribeDocument）
    @available(*, unavailable, message: "有新接口替换")
    @inlinable
    public func describeDocuments(schoolId: UInt64, page: Int64, limit: Int64, permission: [UInt64], owner: String? = nil, keyword: String? = nil, documentId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DescribeDocumentsResponse> {
        fatalError("'DescribeDocuments' is no longer available.")
    }

    /// 批量获取文档信息【已废弃】
    ///
    /// 批量获取文档信息（已废弃，替代接口BatchDescribeDocument）
    @available(*, unavailable, message: "有新接口替换")
    @inlinable
    public func describeDocuments(schoolId: UInt64, page: Int64, limit: Int64, permission: [UInt64], owner: String? = nil, keyword: String? = nil, documentId: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeDocumentsResponse {
        fatalError("'DescribeDocuments' is no longer available.")
    }
}
