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

extension Cbs {
    /// TerminateDisks请求参数结构体
    public struct TerminateDisksRequest: TCRequestModel {
        /// 需退还的云盘ID列表。
        public let diskIds: [String]

        /// 销毁云盘时删除关联的非永久保留快照。0 表示非永久快照不随云盘销毁而销毁，1表示非永久快照随云盘销毁而销毁，默认取0。快照是否永久保留可以通过DescribeSnapshots接口返回的快照详情的IsPermanent字段来判断，true表示永久快照，false表示非永久快照。
        public let deleteSnapshot: Int64?

        public init(diskIds: [String], deleteSnapshot: Int64? = nil) {
            self.diskIds = diskIds
            self.deleteSnapshot = deleteSnapshot
        }

        enum CodingKeys: String, CodingKey {
            case diskIds = "DiskIds"
            case deleteSnapshot = "DeleteSnapshot"
        }
    }

    /// TerminateDisks返回参数结构体
    public struct TerminateDisksResponse: TCResponseModel {
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case requestId = "RequestId"
        }
    }

    /// 退还云硬盘
    ///
    /// 本接口（TerminateDisks）用于退还云硬盘。
    ///
    /// * 不再使用的云盘，可通过本接口主动退还。
    /// * 本接口支持退还预付费云盘和按小时后付费云盘。按小时后付费云盘可直接退还，预付费云盘需符合退还规则。
    /// * 支持批量操作，每次请求批量云硬盘的上限为100。如果批量云盘存在不允许操作的，请求会以特定错误码返回。
    @inlinable @discardableResult
    public func terminateDisks(_ input: TerminateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDisksResponse> {
        self.client.execute(action: "TerminateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 退还云硬盘
    ///
    /// 本接口（TerminateDisks）用于退还云硬盘。
    ///
    /// * 不再使用的云盘，可通过本接口主动退还。
    /// * 本接口支持退还预付费云盘和按小时后付费云盘。按小时后付费云盘可直接退还，预付费云盘需符合退还规则。
    /// * 支持批量操作，每次请求批量云硬盘的上限为100。如果批量云盘存在不允许操作的，请求会以特定错误码返回。
    @inlinable @discardableResult
    public func terminateDisks(_ input: TerminateDisksRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDisksResponse {
        try await self.client.execute(action: "TerminateDisks", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 退还云硬盘
    ///
    /// 本接口（TerminateDisks）用于退还云硬盘。
    ///
    /// * 不再使用的云盘，可通过本接口主动退还。
    /// * 本接口支持退还预付费云盘和按小时后付费云盘。按小时后付费云盘可直接退还，预付费云盘需符合退还规则。
    /// * 支持批量操作，每次请求批量云硬盘的上限为100。如果批量云盘存在不允许操作的，请求会以特定错误码返回。
    @inlinable @discardableResult
    public func terminateDisks(diskIds: [String], deleteSnapshot: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<TerminateDisksResponse> {
        self.terminateDisks(.init(diskIds: diskIds, deleteSnapshot: deleteSnapshot), region: region, logger: logger, on: eventLoop)
    }

    /// 退还云硬盘
    ///
    /// 本接口（TerminateDisks）用于退还云硬盘。
    ///
    /// * 不再使用的云盘，可通过本接口主动退还。
    /// * 本接口支持退还预付费云盘和按小时后付费云盘。按小时后付费云盘可直接退还，预付费云盘需符合退还规则。
    /// * 支持批量操作，每次请求批量云硬盘的上限为100。如果批量云盘存在不允许操作的，请求会以特定错误码返回。
    @inlinable @discardableResult
    public func terminateDisks(diskIds: [String], deleteSnapshot: Int64? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> TerminateDisksResponse {
        try await self.terminateDisks(.init(diskIds: diskIds, deleteSnapshot: deleteSnapshot), region: region, logger: logger, on: eventLoop)
    }
}
