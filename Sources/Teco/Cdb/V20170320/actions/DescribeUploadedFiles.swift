//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
//
// Copyright (c) 2022 the Teco project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// THIS FILE IS AUTOMATICALLY GENERATED by TecoServiceGenerator.
// DO NOT EDIT.

extension Cdb {
    /// DescribeUploadedFiles请求参数结构体
    public struct DescribeUploadedFilesRequest: TCRequestModel {
        /// 文件路径。该字段应填用户主账号的OwnerUin信息。
        public let path: String

        /// 记录偏移量，默认值为0。
        public let offset: Int64?

        /// 单次请求返回的数量，默认值为20。
        public let limit: Int64?

        public init(path: String, offset: Int64? = nil, limit: Int64? = nil) {
            self.path = path
            self.offset = offset
            self.limit = limit
        }

        enum CodingKeys: String, CodingKey {
            case path = "Path"
            case offset = "Offset"
            case limit = "Limit"
        }
    }

    /// DescribeUploadedFiles返回参数结构体
    public struct DescribeUploadedFilesResponse: TCResponseModel {
        /// 符合查询条件的SQL文件总数。
        public let totalCount: Int64

        /// 返回的SQL文件列表。
        public let items: [SqlFileInfo]

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case items = "Items"
            case requestId = "RequestId"
        }
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(_ input: DescribeUploadedFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUploadedFilesResponse > {
        self.client.execute(action: "DescribeUploadedFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(_ input: DescribeUploadedFilesRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadedFilesResponse {
        try await self.client.execute(action: "DescribeUploadedFiles", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(path: String, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DescribeUploadedFilesResponse > {
        self.describeUploadedFiles(DescribeUploadedFilesRequest(path: path, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }

    /// 查询导入SQL文件列表 （已废弃）
    ///
    /// 本接口(DescribeUploadedFiles)用于查询用户导入的SQL文件列表，全地域公共参数Region均为ap-shanghai。
    @inlinable
    public func describeUploadedFiles(path: String, offset: Int64? = nil, limit: Int64? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DescribeUploadedFilesResponse {
        try await self.describeUploadedFiles(DescribeUploadedFilesRequest(path: path, offset: offset, limit: limit), logger: logger, on: eventLoop)
    }
}
