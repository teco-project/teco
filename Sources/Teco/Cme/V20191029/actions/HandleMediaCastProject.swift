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

extension Cme {
    /// HandleMediaCastProject请求参数结构体
    public struct HandleMediaCastProjectRequest: TCRequest {
        /// 平台 Id，指定访问的平台。关于平台概念，请参见文档 [平台](https://cloud.tencent.com/document/product/1156/43767)。
        public let platform: String

        /// 媒体转推项目 Id 。
        public let projectId: String

        /// 请参考 [操作类型](#Operation)。
        public let operation: String

        /// 输入源信息。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        /// 当 Operation 为 AddSource、DeleteSource、SwitchSource 时必填。
        public let sourceInfos: [MediaCastSourceInfo]?

        /// 输出源信息。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        /// 当 Operation 为 AddDestination、DeleteDestination、EnableDestination、DisableDestination、ModifyDestination 时必填。
        public let destinationInfos: [MediaCastDestinationInfo]?

        /// 输出媒体配置。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        /// 当 Operation 为 ModfiyOutputSetting 时必填。
        public let outputMediaSetting: MediaCastOutputMediaSetting?

        /// 播放控制参数。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        /// 当 Operation 为 ModifyPlaySetting 时必填。
        public let playSetting: MediaCastPlaySetting?

        /// 新添加的输入源位于输入源列表的位置，从0开始。默认加在输入源列表的后面。具体操作方式详见 [操作类型](#Operation) 及下文示例。
        /// 当 Operation 为 AddSource 时必填。
        public let position: Int64?

        /// 操作者。如不填，默认为 `cmeid_system`，表示平台管理员操作，可以操作所有媒体转推项目。如果指定操作者，则操作者必须为项目所有者。
        public let `operator`: String?

        public init(platform: String, projectId: String, operation: String, sourceInfos: [MediaCastSourceInfo]? = nil, destinationInfos: [MediaCastDestinationInfo]? = nil, outputMediaSetting: MediaCastOutputMediaSetting? = nil, playSetting: MediaCastPlaySetting? = nil, position: Int64? = nil, operator: String? = nil) {
            self.platform = platform
            self.projectId = projectId
            self.operation = operation
            self.sourceInfos = sourceInfos
            self.destinationInfos = destinationInfos
            self.outputMediaSetting = outputMediaSetting
            self.playSetting = playSetting
            self.position = position
            self.operator = `operator`
        }

        enum CodingKeys: String, CodingKey {
            case platform = "Platform"
            case projectId = "ProjectId"
            case operation = "Operation"
            case sourceInfos = "SourceInfos"
            case destinationInfos = "DestinationInfos"
            case outputMediaSetting = "OutputMediaSetting"
            case playSetting = "PlaySetting"
            case position = "Position"
            case `operator` = "Operator"
        }
    }

    /// HandleMediaCastProject返回参数结构体
    public struct HandleMediaCastProjectResponse: TCResponse {
        /// 播放信息，Operation 为 DescribePlayInfo 时返回。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let playInfo: MediaCastPlayInfo?

        /// 输入源信息， Operation 为 AddSource 时返回添加成功的输入源信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let sourceInfoSet: [MediaCastSourceInfo]?

        /// 输出源信息， Operation 为 AddDestination 时返回添加成功的输出源信息。
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let destinationInfoSet: [MediaCastDestinationInfo]?

        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String

        enum CodingKeys: String, CodingKey {
            case playInfo = "PlayInfo"
            case sourceInfoSet = "SourceInfoSet"
            case destinationInfoSet = "DestinationInfoSet"
            case requestId = "RequestId"
        }
    }

    /// 操作媒体转推项目
    ///
    /// 对媒体转推项目进行操作。
    /// ### 操作类型
    /// - `AddSource`（添加输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B9-.E6.B7.BB.E5.8A.A0.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `DeleteSource`（删除输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B6-.E5.88.A0.E9.99.A4.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `SwitchSource`（切换当前播放的输入源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B5-.E5.88.87.E6.8D.A2.E5.BD.93.E5.89.8D.E6.92.AD.E6.94.BE.E7.9A.84.E8.BE.93.E5.85.A5.E6.BA.90)
    /// - `AddDestination`（ 添加输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DeleteDestination`（删除输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B7-.E5.88.A0.E9.99.A4.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `EnableDestination`（启动输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DisableDestination`（停止输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B4-.E5.81.9C.E6.AD.A2.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `ModifyDestination`（修改输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B2-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `Start`（启动媒体转推），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B12-.E5.90.AF.E5.8A.A8.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)。发起 Start 请求成功后，媒体转推项目开始启动，30秒内还需要再进行一次 Confirm操作进行确认；
    /// - `Confirm`（确认媒体转推项目启动），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B14-.E7.A1.AE.E8.AE.A4.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E5.90.AF.E5.8A.A8)；
    /// - `Stop`（停止媒体转推），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B11-.E5.81.9C.E6.AD.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)；
    /// - `ModifyOutputMediaSetting`（修改媒体输出配置），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B3-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E7.9A.84.E5.AA.92.E4.BD.93.E9.85.8D.E7.BD.AE)；
    /// - `ModifyPlaySetting`（修改播放结束时间），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B1-.E4.BF.AE.E6.94.B9.E7.BB.93.E6.9D.9F.E6.97.B6.E9.97.B4);
    /// - `DescribePlayInfo`（查询播放信息），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B13-.E6.9F.A5.E8.AF.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E7.9A.84.E6.92.AD.E6.94.BE.E4.BF.A1.E6.81.AF)。
    @inlinable
    public func handleMediaCastProject(_ input: HandleMediaCastProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HandleMediaCastProjectResponse> {
        self.client.execute(action: "HandleMediaCastProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }

    /// 操作媒体转推项目
    ///
    /// 对媒体转推项目进行操作。
    /// ### 操作类型
    /// - `AddSource`（添加输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B9-.E6.B7.BB.E5.8A.A0.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `DeleteSource`（删除输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B6-.E5.88.A0.E9.99.A4.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `SwitchSource`（切换当前播放的输入源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B5-.E5.88.87.E6.8D.A2.E5.BD.93.E5.89.8D.E6.92.AD.E6.94.BE.E7.9A.84.E8.BE.93.E5.85.A5.E6.BA.90)
    /// - `AddDestination`（ 添加输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DeleteDestination`（删除输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B7-.E5.88.A0.E9.99.A4.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `EnableDestination`（启动输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DisableDestination`（停止输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B4-.E5.81.9C.E6.AD.A2.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `ModifyDestination`（修改输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B2-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `Start`（启动媒体转推），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B12-.E5.90.AF.E5.8A.A8.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)。发起 Start 请求成功后，媒体转推项目开始启动，30秒内还需要再进行一次 Confirm操作进行确认；
    /// - `Confirm`（确认媒体转推项目启动），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B14-.E7.A1.AE.E8.AE.A4.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E5.90.AF.E5.8A.A8)；
    /// - `Stop`（停止媒体转推），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B11-.E5.81.9C.E6.AD.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)；
    /// - `ModifyOutputMediaSetting`（修改媒体输出配置），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B3-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E7.9A.84.E5.AA.92.E4.BD.93.E9.85.8D.E7.BD.AE)；
    /// - `ModifyPlaySetting`（修改播放结束时间），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B1-.E4.BF.AE.E6.94.B9.E7.BB.93.E6.9D.9F.E6.97.B6.E9.97.B4);
    /// - `DescribePlayInfo`（查询播放信息），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B13-.E6.9F.A5.E8.AF.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E7.9A.84.E6.92.AD.E6.94.BE.E4.BF.A1.E6.81.AF)。
    @inlinable
    public func handleMediaCastProject(_ input: HandleMediaCastProjectRequest, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HandleMediaCastProjectResponse {
        try await self.client.execute(action: "HandleMediaCastProject", region: region, serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }

    /// 操作媒体转推项目
    ///
    /// 对媒体转推项目进行操作。
    /// ### 操作类型
    /// - `AddSource`（添加输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B9-.E6.B7.BB.E5.8A.A0.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `DeleteSource`（删除输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B6-.E5.88.A0.E9.99.A4.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `SwitchSource`（切换当前播放的输入源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B5-.E5.88.87.E6.8D.A2.E5.BD.93.E5.89.8D.E6.92.AD.E6.94.BE.E7.9A.84.E8.BE.93.E5.85.A5.E6.BA.90)
    /// - `AddDestination`（ 添加输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DeleteDestination`（删除输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B7-.E5.88.A0.E9.99.A4.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `EnableDestination`（启动输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DisableDestination`（停止输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B4-.E5.81.9C.E6.AD.A2.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `ModifyDestination`（修改输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B2-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `Start`（启动媒体转推），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B12-.E5.90.AF.E5.8A.A8.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)。发起 Start 请求成功后，媒体转推项目开始启动，30秒内还需要再进行一次 Confirm操作进行确认；
    /// - `Confirm`（确认媒体转推项目启动），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B14-.E7.A1.AE.E8.AE.A4.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E5.90.AF.E5.8A.A8)；
    /// - `Stop`（停止媒体转推），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B11-.E5.81.9C.E6.AD.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)；
    /// - `ModifyOutputMediaSetting`（修改媒体输出配置），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B3-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E7.9A.84.E5.AA.92.E4.BD.93.E9.85.8D.E7.BD.AE)；
    /// - `ModifyPlaySetting`（修改播放结束时间），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B1-.E4.BF.AE.E6.94.B9.E7.BB.93.E6.9D.9F.E6.97.B6.E9.97.B4);
    /// - `DescribePlayInfo`（查询播放信息），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B13-.E6.9F.A5.E8.AF.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E7.9A.84.E6.92.AD.E6.94.BE.E4.BF.A1.E6.81.AF)。
    @inlinable
    public func handleMediaCastProject(platform: String, projectId: String, operation: String, sourceInfos: [MediaCastSourceInfo]? = nil, destinationInfos: [MediaCastDestinationInfo]? = nil, outputMediaSetting: MediaCastOutputMediaSetting? = nil, playSetting: MediaCastPlaySetting? = nil, position: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture<HandleMediaCastProjectResponse> {
        self.handleMediaCastProject(.init(platform: platform, projectId: projectId, operation: operation, sourceInfos: sourceInfos, destinationInfos: destinationInfos, outputMediaSetting: outputMediaSetting, playSetting: playSetting, position: position, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }

    /// 操作媒体转推项目
    ///
    /// 对媒体转推项目进行操作。
    /// ### 操作类型
    /// - `AddSource`（添加输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B9-.E6.B7.BB.E5.8A.A0.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `DeleteSource`（删除输入源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B6-.E5.88.A0.E9.99.A4.E8.BE.93.E5.85.A5.E6.BA.90)；
    /// - `SwitchSource`（切换当前播放的输入源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B5-.E5.88.87.E6.8D.A2.E5.BD.93.E5.89.8D.E6.92.AD.E6.94.BE.E7.9A.84.E8.BE.93.E5.85.A5.E6.BA.90)
    /// - `AddDestination`（ 添加输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DeleteDestination`（删除输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B7-.E5.88.A0.E9.99.A4.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `EnableDestination`（启动输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B8-.E5.90.AF.E5.8A.A8.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `DisableDestination`（停止输出源），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B4-.E5.81.9C.E6.AD.A2.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `ModifyDestination`（修改输出源），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B2-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E6.BA.90)；
    /// - `Start`（启动媒体转推），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B12-.E5.90.AF.E5.8A.A8.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)。发起 Start 请求成功后，媒体转推项目开始启动，30秒内还需要再进行一次 Confirm操作进行确认；
    /// - `Confirm`（确认媒体转推项目启动），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B14-.E7.A1.AE.E8.AE.A4.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E5.90.AF.E5.8A.A8)；
    /// - `Stop`（停止媒体转推），项目状态为 Working 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B11-.E5.81.9C.E6.AD.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8)；
    /// - `ModifyOutputMediaSetting`（修改媒体输出配置），项目状态为 Idle 时可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B3-.E4.BF.AE.E6.94.B9.E8.BE.93.E5.87.BA.E7.9A.84.E5.AA.92.E4.BD.93.E9.85.8D.E7.BD.AE)；
    /// - `ModifyPlaySetting`（修改播放结束时间），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B1-.E4.BF.AE.E6.94.B9.E7.BB.93.E6.9D.9F.E6.97.B6.E9.97.B4);
    /// - `DescribePlayInfo`（查询播放信息），项目状态为 Idle、Working 时均可以操作。参见 [示例](#.E7.A4.BA.E4.BE.8B13-.E6.9F.A5.E8.AF.A2.E5.AA.92.E4.BD.93.E8.BD.AC.E6.8E.A8.E9.A1.B9.E7.9B.AE.E7.9A.84.E6.92.AD.E6.94.BE.E4.BF.A1.E6.81.AF)。
    @inlinable
    public func handleMediaCastProject(platform: String, projectId: String, operation: String, sourceInfos: [MediaCastSourceInfo]? = nil, destinationInfos: [MediaCastDestinationInfo]? = nil, outputMediaSetting: MediaCastOutputMediaSetting? = nil, playSetting: MediaCastPlaySetting? = nil, position: Int64? = nil, operator: String? = nil, region: TCRegion? = nil, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> HandleMediaCastProjectResponse {
        try await self.handleMediaCastProject(.init(platform: platform, projectId: projectId, operation: operation, sourceInfos: sourceInfos, destinationInfos: destinationInfos, outputMediaSetting: outputMediaSetting, playSetting: playSetting, position: position, operator: `operator`), region: region, logger: logger, on: eventLoop)
    }
}
