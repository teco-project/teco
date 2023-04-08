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

extension Smop {
    /// 后端提交任务事件返回Data复杂类型
    public struct TaskEventData: TCOutputModel {
        /// 状态码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let code: Int64?

        /// 提示信息
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let message: String?

        /// 任务ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskId: Int64?

        /// 当前完成或正在完成的任务订单ID
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskOrderId: String?

        /// 当前任务订单状态码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskCode: Int64?

        /// 获得积分数/成长值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskCoinNumber: Int64?

        /// 任务类型后台代码
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskType: Int64?

        /// 当前积分
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalCoin: Int64?

        /// 用户透传的代码块
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let attach: String?

        /// 计次任务当前完成次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let doneTimes: Int64?

        /// 计次任务当前所需完成次数
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let totalTimes: Int64?

        /// 任务名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let taskName: String?

        /// 当前成长值
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let growScore: Int64?

        enum CodingKeys: String, CodingKey {
            case code = "Code"
            case message = "Message"
            case taskId = "TaskId"
            case taskOrderId = "TaskOrderId"
            case taskCode = "TaskCode"
            case taskCoinNumber = "TaskCoinNumber"
            case taskType = "TaskType"
            case totalCoin = "TotalCoin"
            case attach = "Attach"
            case doneTimes = "DoneTimes"
            case totalTimes = "TotalTimes"
            case taskName = "TaskName"
            case growScore = "GrowScore"
        }
    }
}
