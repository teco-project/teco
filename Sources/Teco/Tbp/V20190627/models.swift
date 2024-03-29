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

import TecoCore

extension Tbp {
    /// Group是消息组的具体定义，当前包含ContentType、Url、Content三个字段。其中，具体的ContentType字段定义，参考互联网MIME类型标准。
    public struct Group: TCOutputModel {
        /// 消息类型参考互联网MIME类型标准，当前仅支持"text/plain"。
        public let contentType: String

        /// 返回内容以链接形式提供。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let url: String?

        /// 普通文本。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let content: String?

        enum CodingKeys: String, CodingKey {
            case contentType = "ContentType"
            case url = "Url"
            case content = "Content"
        }
    }

    /// 从TBP-RTS服务v1.3版本起，机器人以消息组列表的形式响应，消息组列表GroupList包含多组消息，用户根据需要对部分或全部消息组进行组合使用。
    public struct ResponseMessage: TCOutputModel {
        /// 消息组列表。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let groupList: [Group]?

        enum CodingKeys: String, CodingKey {
            case groupList = "GroupList"
        }
    }

    /// 槽位信息
    public struct SlotInfo: TCOutputModel {
        /// 槽位名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slotName: String?

        /// 槽位值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let slotValue: String?

        enum CodingKeys: String, CodingKey {
            case slotName = "SlotName"
            case slotValue = "SlotValue"
        }
    }
}
