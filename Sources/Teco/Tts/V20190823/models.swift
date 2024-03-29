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

extension Tts {
    /// 异步合成请求的返回数据
    public struct CreateTtsTaskRespData: TCOutputModel {
        /// 任务ID，可通过此ID在轮询接口获取合成状态与结果。注意：TaskId数据类型为string
        public let taskId: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
        }
    }

    /// 获取异步合成结果的返回参数
    public struct DescribeTtsTaskStatusRespData: TCOutputModel {
        /// 任务标识。
        public let taskId: String

        /// 任务状态码，0：任务等待，1：任务执行中，2：任务成功，3：任务失败。
        public let status: Int64

        /// 任务状态，waiting：任务等待，doing：任务执行中，success：任务成功，failed：任务失败。
        public let statusStr: String

        /// 合成音频COS地址（链接有效期1天）。
        public let resultUrl: String

        /// 时间戳信息，若未开启时间戳，则返回空数组。
        public let subtitles: [Subtitle]

        /// 失败原因说明。
        public let errorMsg: String

        enum CodingKeys: String, CodingKey {
            case taskId = "TaskId"
            case status = "Status"
            case statusStr = "StatusStr"
            case resultUrl = "ResultUrl"
            case subtitles = "Subtitles"
            case errorMsg = "ErrorMsg"
        }
    }

    /// 时间戳信息。
    public struct Subtitle: TCOutputModel {
        /// ⽂本信息。
        public let text: String

        /// ⽂本对应tts语⾳开始时间戳，单位ms。
        public let beginTime: Int64

        /// ⽂本对应tts语⾳结束时间戳，单位ms。
        public let endTime: Int64

        /// 该字在整句中的开始位置，从0开始。
        public let beginIndex: Int64

        /// 该字在整句中的结束位置，从0开始。
        public let endIndex: Int64

        /// 该字的音素
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let phoneme: String?

        enum CodingKeys: String, CodingKey {
            case text = "Text"
            case beginTime = "BeginTime"
            case endTime = "EndTime"
            case beginIndex = "BeginIndex"
            case endIndex = "EndIndex"
            case phoneme = "Phoneme"
        }
    }
}
