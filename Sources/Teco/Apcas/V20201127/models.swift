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

@_exported import struct Foundation.Date
import TecoDateHelpers

extension Apcas {
    /// 调用明细结构体
    public struct CallDetailItem: TCOutputModel {
        /// 数据类型 0 imei 1 qimei 2 qq 3 phone 7:IDFA 8:MD5(imei)
        public let dataType: UInt64

        /// 有效数据量
        public let validAmount: UInt64

        /// 调用时间
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var date: Date

        enum CodingKeys: String, CodingKey {
            case dataType = "DataType"
            case validAmount = "ValidAmount"
            case date = "Date"
        }
    }

    /// 调用明细返回数据体
    public struct CallDetails: TCOutputModel {
        /// 符合条件的总条数
        public let totalCount: UInt64

        /// 调用明细数组
        public let callDetailSet: [CallDetailItem]

        enum CodingKeys: String, CodingKey {
            case totalCount = "TotalCount"
            case callDetailSet = "CallDetailSet"
        }
    }

    /// 调用量统计item
    public struct CallStatItem: TCOutputModel {
        /// 当前统计量的时间段
        ///
        /// While the wrapped date value is immutable just like other fields, you can customize the projected
        /// string value (through `$`-prefix) in case the synthesized encoding is incorrect.
        @TCTimestampEncoding public var date: Date

        /// 当前时间段的调用量
        public let amount: UInt64

        enum CodingKeys: String, CodingKey {
            case date = "Date"
            case amount = "Amount"
        }
    }

    /// 调用量统计信息，包括周/日/月/总调用量
    public struct GeneralStat: TCOutputModel {
        /// 今日调用量
        public let todayAmount: UInt64

        /// 本周调用量
        public let weekAmount: UInt64

        /// 本月调用量
        public let monthAmount: UInt64

        /// 总调用量
        public let totalAmount: UInt64

        enum CodingKeys: String, CodingKey {
            case todayAmount = "TodayAmount"
            case weekAmount = "WeekAmount"
            case monthAmount = "MonthAmount"
            case totalAmount = "TotalAmount"
        }
    }

    /// 画像标签详情数据对象
    public struct LabelDetailData: TCOutputModel {
        /// 标签数据对象
        public let value: LabelValue

        /// 标签表述，如"汽车资讯"、"游戏#手游"等
        public let label: String

        enum CodingKeys: String, CodingKey {
            case value = "Value"
            case label = "Label"
        }
    }

    /// 标签数据
    public struct LabelValue: TCOutputModel {
        /// 标签覆盖率占比（在整个上传的ID列表中的覆盖率）
        public let proportion: Float

        /// 标签大盘覆盖率占比
        public let market: Float

        /// TGI指数，由Proportion除以Market得到
        public let tgi: Float

        enum CodingKeys: String, CodingKey {
            case proportion = "Proportion"
            case market = "Market"
            case tgi = "Tgi"
        }
    }

    /// 任务列表项Model
    public struct ListModel: TCOutputModel {
        /// 任务ID
        public let id: UInt64

        /// 任务名称
        public let taskName: String

        /// 任务起始时间（13位数字的UNIX 时间戳，单位毫秒 ）
        public let startTime: UInt64

        /// 任务状态 0:默认状态 1:任务正在运行 2:任务运行成功 3:任务运行失败
        public let status: UInt64

        /// 画像覆盖人数
        public let available: UInt64

        /// 任务失败描述信息
        public let errMsg: String

        enum CodingKeys: String, CodingKey {
            case id = "ID"
            case taskName = "TaskName"
            case startTime = "StartTime"
            case status = "Status"
            case available = "Available"
            case errMsg = "ErrMsg"
        }
    }

    /// 返回购车意向评级
    public struct RatingData: TCOutputModel {
        /// 线索评级（取值：0、1、2、3分别代表无、低、中、高意愿）
        public let rank: Int64

        enum CodingKeys: String, CodingKey {
            case rank = "Rank"
        }
    }

    /// 任务ID信息
    public struct TaskData: TCOutputModel {
        /// 画像洞察任务ID
        public let id: UInt64

        enum CodingKeys: String, CodingKey {
            case id = "Id"
        }
    }

    /// 画像任务详情对象
    public struct TaskDetailData: TCOutputModel {
        /// 画像TAG ID
        public let tagId: UInt64

        /// 画像TAG描述（如“省份分布”）
        public let tagDesc: String

        /// 画像Label对象列表（一个TAG对于N个Label，例如“省份分布”TAG对应“广东省”、“浙江省”等多个Label）
        public let labelDetailDataList: [LabelDetailData]

        enum CodingKeys: String, CodingKey {
            case tagId = "TagId"
            case tagDesc = "TagDesc"
            case labelDetailDataList = "LabelDetailDataList"
        }
    }

    /// 任务列表对象
    public struct TaskListData: TCOutputModel {
        /// 查询分页页码
        public let pageNumber: UInt64

        /// 查询分页大小
        public let pageSize: UInt64

        /// 任务列表总记录数
        public let totalCount: UInt64

        /// 任务列表
        public let taskList: [ListModel]

        enum CodingKeys: String, CodingKey {
            case pageNumber = "PageNumber"
            case pageSize = "PageSize"
            case totalCount = "TotalCount"
            case taskList = "TaskList"
        }
    }
}
