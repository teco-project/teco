//===----------------------------------------------------------------------===//
//
// This source file is part of the Teco open source project.
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

extension Tmt {
    /// 查询文件翻译任务
    public struct GetFileTranslateData: TCOutputModel {
        /// 任务ID
        public let taskId: String

        /// 状态
        public let status: String

        /// 文件数据
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let fileData: String?

        /// 错误提示
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 翻译进度
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let progress: Int64?

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case fileData = "FileData"
            case message = "Message"
            case progress = "Progress"
        }
    }

    /// 图片翻译结果
    public struct ImageRecord: TCOutputModel {
        /// 图片翻译结果
        public let value: [ItemValue]

        enum CodingKeys: String, CodingKey {
            case value = "Value"
        }
    }

    /// 翻译结果
    public struct ItemValue: TCOutputModel {
        /// 识别出的源文
        public let sourceText: String

        /// 翻译后的译文
        public let targetText: String

        /// X坐标
        public let x: Int64

        /// Y坐标
        public let y: Int64

        /// 宽度
        public let w: Int64

        /// 高度
        public let h: Int64

        enum CodingKeys: String, CodingKey {
            case sourceText = "SourceText"
            case targetText = "TargetText"
            case x = "X"
            case y = "Y"
            case w = "W"
            case h = "H"
        }
    }

    /// 文件翻译请求的返回数据
    public struct Task: TCOutputModel {
        /// 任务ID，可通过此ID在轮询接口获取识别状态与结果。注意：TaskId数据类型为字符串类型
        public let taskId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }
}
