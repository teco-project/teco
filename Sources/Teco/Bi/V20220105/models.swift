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

// Test PR teco-project/teco-code-generator#23.

import TecoCore

extension Bi {
    /// 申请Token延期
    public struct ApplyEmbedTokenInfo: TCOutputModel {
        /// 申请结果
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let result: Bool?

        enum CodingKeys: String, CodingKey {
            case result = "Result"
        }
    }

    /// 报表嵌出数据结构-强鉴权
    public struct EmbedTokenInfo: TCOutputModel {
        /// 信息标识
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let id: UInt64?

        /// 令牌
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let biToken: String?

        /// 项目Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let projectId: String?

        /// 创建人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdUser: String?

        /// 创建时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let createdAt: String?

        /// 更新人
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedUser: String?

        /// 更新时间
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let updatedAt: String?

        /// 页面Id
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let pageId: String?

        /// 备用
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let extraParam: String?

        /// 嵌出类型
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let scope: String?

        /// 过期时间，分钟为单位，最大240
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let expireTime: UInt64?

        enum CodingKeys: String, CodingKey {
            case id = "Id"
            case biToken = "BIToken"
            case projectId = "ProjectId"
            case createdUser = "CreatedUser"
            case createdAt = "CreatedAt"
            case updatedUser = "UpdatedUser"
            case updatedAt = "UpdatedAt"
            case pageId = "PageId"
            case extraParam = "ExtraParam"
            case scope = "Scope"
            case expireTime = "ExpireTime"
        }
    }
}
