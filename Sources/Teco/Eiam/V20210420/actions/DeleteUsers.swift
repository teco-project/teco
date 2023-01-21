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

extension Eiam {
    /// DeleteUsers请求参数结构体
    public struct DeleteUsersRequest: TCRequestModel {
        /// 被删除用户的ID列表。DeleteIdList 和 DeleteNameList 需至少一个不为空；都不为空时优先使用 DeleteNameList。
        public let deleteIdList: [String]?

        /// 被删除用户的名称列表。DeleteIdList 和 DeleteNameList 需至少一个不为空；都不为空时优先使用 DeleteNameList。
        public let deleteNameList: [String]?

        public init(deleteIdList: [String]? = nil, deleteNameList: [String]? = nil) {
            self.deleteIdList = deleteIdList
            self.deleteNameList = deleteNameList
        }

        enum CodingKeys: String, CodingKey {
            case deleteIdList = "DeleteIdList"
            case deleteNameList = "DeleteNameList"
        }
    }

    /// DeleteUsers返回参数结构体
    public struct DeleteUsersResponse: TCResponseModel {
        /// 未被成功删除的用户信息。当业务参数为DeleteIdList时，本字段将返回未成功删除的用户ID列表。当业务参数为DeleteNameList时，本字段将返回未成功删除的用户名称列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let failedItems: [String]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case failedItems = "FailedItems"
            case requestId = "RequestId"
        }
    }

    /// 批量删除用户
    ///
    /// 批量删除当前节点下的用户。如果出现个别用户删除错误，将不影响其余被勾选用户被删除的操作，同时提示未被删除的用户名称/用户ID。
    @inlinable
    public func deleteUsers(_ input: DeleteUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsersResponse> {
        self.client.execute(action: "DeleteUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 批量删除用户
    ///
    /// 批量删除当前节点下的用户。如果出现个别用户删除错误，将不影响其余被勾选用户被删除的操作，同时提示未被删除的用户名称/用户ID。
    @inlinable
    public func deleteUsers(_ input: DeleteUsersRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersResponse {
        try await self.client.execute(action: "DeleteUsers", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 批量删除用户
    ///
    /// 批量删除当前节点下的用户。如果出现个别用户删除错误，将不影响其余被勾选用户被删除的操作，同时提示未被删除的用户名称/用户ID。
    @inlinable
    public func deleteUsers(deleteIdList: [String]? = nil, deleteNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<DeleteUsersResponse> {
        self.deleteUsers(DeleteUsersRequest(deleteIdList: deleteIdList, deleteNameList: deleteNameList), region: region, logger: logger, on: eventLoop)
    }

    /// 批量删除用户
    ///
    /// 批量删除当前节点下的用户。如果出现个别用户删除错误，将不影响其余被勾选用户被删除的操作，同时提示未被删除的用户名称/用户ID。
    @inlinable
    public func deleteUsers(deleteIdList: [String]? = nil, deleteNameList: [String]? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DeleteUsersResponse {
        try await self.deleteUsers(DeleteUsersRequest(deleteIdList: deleteIdList, deleteNameList: deleteNameList), region: region, logger: logger, on: eventLoop)
    }
}
