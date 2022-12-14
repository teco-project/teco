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

extension Npp {
    /// DelVirtualNum请求参数结构体
    public struct DelVirtualNumRequest: TCRequestModel {
        /// 业务appid
        public let bizAppId: String

        /// 双方号码 + 中间号绑定 ID，该 ID 全局唯一
        public let bindId: String

        /// 应用二级业务 ID，bizId 需保证在该 appId 下全局唯一，最大长度不超过 16 个字节。
        public let bizId: String?

        public init(bizAppId: String, bindId: String, bizId: String? = nil) {
            self.bizAppId = bizAppId
            self.bindId = bindId
            self.bizId = bizId
        }

        enum CodingKeys: String, CodingKey {
            case bizAppId = "BizAppId"
            case bindId = "BindId"
            case bizId = "BizId"
        }
    }

    /// DelVirtualNum返回参数结构体
    public struct DelVirtualNumResponse: TCResponseModel {
        /// 错误码
        public let errorCode: String

        /// 错误信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let msg: String?

        /// 绑定 ID，该 ID 全局唯一
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let bindId: String?

        /// 中间号还剩引用计数，如果计数为 0 会解绑
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let refLeftNum: String?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case errorCode = "ErrorCode"
            case msg = "Msg"
            case bindId = "BindId"
            case refLeftNum = "RefLeftNum"
            case requestId = "RequestId"
        }
    }

    /// 直拨解绑中间号
    @inlinable
    public func delVirtualNum(_ input: DelVirtualNumRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DelVirtualNumResponse > {
        self.client.execute(action: "DelVirtualNum", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 直拨解绑中间号
    @inlinable
    public func delVirtualNum(_ input: DelVirtualNumRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DelVirtualNumResponse {
        try await self.client.execute(action: "DelVirtualNum", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 直拨解绑中间号
    @inlinable
    public func delVirtualNum(bizAppId: String, bindId: String, bizId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < DelVirtualNumResponse > {
        self.delVirtualNum(DelVirtualNumRequest(bizAppId: bizAppId, bindId: bindId, bizId: bizId), logger: logger, on: eventLoop)
    }

    /// 直拨解绑中间号
    @inlinable
    public func delVirtualNum(bizAppId: String, bindId: String, bizId: String? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> DelVirtualNumResponse {
        try await self.delVirtualNum(DelVirtualNumRequest(bizAppId: bizAppId, bindId: bindId, bizId: bizId), logger: logger, on: eventLoop)
    }
}
