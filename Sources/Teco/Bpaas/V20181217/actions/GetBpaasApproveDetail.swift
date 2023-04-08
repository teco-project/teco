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

extension Bpaas {
    /// GetBpaasApproveDetail请求参数结构体
    public struct GetBpaasApproveDetailRequest: TCRequestModel {
        /// 审批id
        public let approveId: UInt64

        public init(approveId: UInt64) {
            self.approveId = approveId
        }

        enum CodingKeys: String, CodingKey {
            case approveId = "ApproveId"
        }
    }

    /// GetBpaasApproveDetail返回参数结构体
    public struct GetBpaasApproveDetailResponse: TCResponseModel {
        /// 申请人uin
        public let applyUin: UInt64

        /// 申请人主账号
        public let applyOwnUin: UInt64

        /// 申请人昵称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applyUinNick: String?

        /// 审批流id
        public let bpaasId: UInt64

        /// 审批流名称
        public let bpaasName: String

        /// 申请参数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let applicationParams: [ApplyParam]?

        /// 申请原因
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let reason: String?

        /// 申请时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createTime: String?

        /// 申请单状态
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let status: UInt64?

        /// 节点信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let nodes: [StatusNode]?

        /// 正在审批的节点id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let approvingNodeId: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case applyUin = "ApplyUin"
            case applyOwnUin = "ApplyOwnUin"
            case applyUinNick = "ApplyUinNick"
            case bpaasId = "BpaasId"
            case bpaasName = "BpaasName"
            case applicationParams = "ApplicationParams"
            case reason = "Reason"
            case createTime = "CreateTime"
            case status = "Status"
            case nodes = "Nodes"
            case approvingNodeId = "ApprovingNodeId"
            case requestId = "RequestId"
        }
    }

    /// 查看审批详情
    @inlinable
    public func getBpaasApproveDetail(_ input: GetBpaasApproveDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBpaasApproveDetailResponse> {
        self.client.execute(action: "GetBpaasApproveDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 查看审批详情
    @inlinable
    public func getBpaasApproveDetail(_ input: GetBpaasApproveDetailRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBpaasApproveDetailResponse {
        try await self.client.execute(action: "GetBpaasApproveDetail", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 查看审批详情
    @inlinable
    public func getBpaasApproveDetail(approveId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<GetBpaasApproveDetailResponse> {
        self.getBpaasApproveDetail(.init(approveId: approveId), region: region, logger: logger, on: eventLoop)
    }

    /// 查看审批详情
    @inlinable
    public func getBpaasApproveDetail(approveId: UInt64, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> GetBpaasApproveDetailResponse {
        try await self.getBpaasApproveDetail(.init(approveId: approveId), region: region, logger: logger, on: eventLoop)
    }
}
