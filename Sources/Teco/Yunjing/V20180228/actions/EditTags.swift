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

extension Yunjing {
    /// EditTags请求参数结构体
    public struct EditTagsRequest: TCRequestModel {
        /// 标签名
        public let name: String

        /// 标签ID
        public let id: UInt64?

        /// CVM主机ID
        public let quuids: [String]?

        public init(name: String, id: UInt64? = nil, quuids: [String]? = nil) {
            self.name = name
            self.id = id
            self.quuids = quuids
        }

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case id = "Id"
            case quuids = "Quuids"
        }
    }

    /// EditTags返回参数结构体
    public struct EditTagsResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 新增或编辑标签
    @inlinable @discardableResult
    public func editTags(_ input: EditTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditTagsResponse> {
        self.client.execute(action: "EditTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或编辑标签
    @inlinable @discardableResult
    public func editTags(_ input: EditTagsRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditTagsResponse {
        try await self.client.execute(action: "EditTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 新增或编辑标签
    @inlinable @discardableResult
    public func editTags(name: String, id: UInt64? = nil, quuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<EditTagsResponse> {
        let input = EditTagsRequest(name: name, id: id, quuids: quuids)
        return self.client.execute(action: "EditTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 新增或编辑标签
    @inlinable @discardableResult
    public func editTags(name: String, id: UInt64? = nil, quuids: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> EditTagsResponse {
        let input = EditTagsRequest(name: name, id: id, quuids: quuids)
        return try await self.client.execute(action: "EditTags", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
