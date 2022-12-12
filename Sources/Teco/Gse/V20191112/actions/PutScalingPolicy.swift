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

extension Gse {
    /// PutScalingPolicy请求参数结构体
    public struct PutScalingPolicyRequest: TCRequestModel {
        /// 扩缩容配置服务器舰队ID
        public let fleetId: String
        
        /// 扩缩容策略名称，最小长度为1，最大长度为1024
        public let name: String?
        
        /// 扩缩容调整值，ScalingAdjustmentType取值PercentChangeInCapacity时，取值范围-99~99
        /// ScalingAdjustmentType取值ChangeInCapacity或ExactCapacity时，最小值要缩容的最多CVM个数，最大值为实际最大的CVM个数限额
        public let scalingAdjustment: Int64?
        
        /// 扩缩容调整类型，取值（ChangeInCapacity，ExactCapacity，PercentChangeInCapacity）
        public let scalingAdjustmentType: String?
        
        /// 扩缩容指标阈值
        public let threshold: Float?
        
        /// 扩缩容策略比较符，取值：>,>=,<,<=
        public let comparisonOperator: String?
        
        /// 单个策略持续时间长度（分钟）
        public let evaluationPeriods: Int64?
        
        /// 扩缩容参与计算的指标名称，PolicyType取值RuleBased，
        /// MetricName取值（AvailableGameServerSessions，AvailableCustomCount，PercentAvailableCustomCount，ActiveInstances，IdleInstances，CurrentPlayerSessions和PercentIdleInstances）；
        /// PolicyType取值TargetBased时，MetricName取值PercentAvailableGameSessions
        public let metricName: String?
        
        /// 策略类型，取值：TargetBased表示基于目标的策略；RuleBased表示基于规则的策略
        public let policyType: String?
        
        /// 扩缩容目标值配置，只有TargetBased类型的策略生效
        public let targetConfiguration: TargetConfiguration?
        
        public init (fleetId: String, name: String? = nil, scalingAdjustment: Int64? = nil, scalingAdjustmentType: String? = nil, threshold: Float? = nil, comparisonOperator: String? = nil, evaluationPeriods: Int64? = nil, metricName: String? = nil, policyType: String? = nil, targetConfiguration: TargetConfiguration? = nil) {
            self.fleetId = fleetId
            self.name = name
            self.scalingAdjustment = scalingAdjustment
            self.scalingAdjustmentType = scalingAdjustmentType
            self.threshold = threshold
            self.comparisonOperator = comparisonOperator
            self.evaluationPeriods = evaluationPeriods
            self.metricName = metricName
            self.policyType = policyType
            self.targetConfiguration = targetConfiguration
        }
        
        enum CodingKeys: String, CodingKey {
            case fleetId = "FleetId"
            case name = "Name"
            case scalingAdjustment = "ScalingAdjustment"
            case scalingAdjustmentType = "ScalingAdjustmentType"
            case threshold = "Threshold"
            case comparisonOperator = "ComparisonOperator"
            case evaluationPeriods = "EvaluationPeriods"
            case metricName = "MetricName"
            case policyType = "PolicyType"
            case targetConfiguration = "TargetConfiguration"
        }
    }
    
    /// PutScalingPolicy返回参数结构体
    public struct PutScalingPolicyResponse: TCResponseModel {
        /// 规则名称
        /// 注意：此字段可能返回 null，表示取不到有效值。
        public let name: String?
        
        /// 唯一请求 ID，每次请求都会返回。定位问题时需要提供该次请求的 RequestId。
        public let requestId: String
        
        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case requestId = "RequestId"
        }
    }
    
    /// 设置扩缩容策略
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutScalingPolicy）用于设置服务器舰队的动态扩缩容策略。
    /// 通过此接口可以增加或者更新服务器舰队的扩缩容策略。
    /// 服务器舰队可以有多个扩缩容策略，但是只有一个TargetBased基于目标的策略。
    /// ## TargetBased基于目标的策略
    /// TargetBased策略计算的指标是PercentAvailableGameSessions，这个策略用于计算当前服务器舰队应该有多少个CVM实例来支撑和分配游戏会话。
    /// PercentAvailableGameSessions表示服务器舰队的缓冲值；用来计算服务器舰队在当前容量下可以处理的额外玩家会话数量。
    /// 如果使用基于目标的策略，可以按照业务需求设置一个期望的缓冲区大小，GSE的会按照配置的策略来扩容和缩容到这个目标要求的CVM实例数。
    /// 例如：客户可以设置同时承载100个游戏会话的服务器舰队预留10%的缓冲区。GSE会按照这个策略执行时，若服务器舰队的可用容量低于或高于10%的游戏服务器会话时，执行扩缩容动作。
    /// GSE按照策略期望，扩容新CVM实例或缩容未使用的实例，保持在10%左右的缓冲区。
    /// #### 请求参数取值说明
    /// ```
    /// Name取值策略名称，
    /// FleetId取值为选择的服务器舰队ID，
    /// PolicyType取值TargetBased，
    /// MetricName取值PercentAvailableGameSessions，
    /// TargetConfiguration取值为所需的缓冲区值对象，
    /// 其他参数不用传递。
    /// 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
    /// ```
    /// ## RuleBased基于规则的策略
    /// ####  请求参数取值说明
    /// ```
    /// Name取值策略名称，
    /// FleetId取值为选择的服务器舰队ID，
    /// PolicyType取值RuleBased，
    /// MetricName取值（AvailableGameServerSessions，AvailableCustomCount，PercentAvailableCustomCount，ActiveInstances，IdleInstances，CurrentPlayerSessions和PercentIdleInstances）说明见备注1，
    /// 其他参数不用传递。
    /// ComparisonOperator取值为 >,>=,<,<=这4个比较符号中的一个，
    /// Threshold取值为指标MetricName达到的阈值是多少，
    /// EvaluationPeriods取值为指标MetricName达到的阈值持续了多少时间，单位是分钟，
    /// ScalingAdjustmentType取值（ChangeInCapacity，ExactCapacity，PercentChangeInCapacity）说明见备注2
    /// ScalingAdjustment取值为指标MetricName达到的阈值的条件后，扩缩容多少个CVM实例。
    /// 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
    /// ```
    /// 规则执行的条件表达式如下所示：
    /// ```
    /// 若 [MetricName] 是 [ComparisonOperator] [Threshold] 持续 [EvaluationPeriods] 分钟, 则 [ScalingAdjustmentType] 调整 [ScalingAdjustment]个实例。
    /// ```
    /// ```
    /// if [MetricName] ComparisonOperator [Threshold] for [EvaluationPeriods] minutes, then scaling up by/to  [ScalingAdjustment]
    /// ```
    /// 例如1：如果当前AvailableCustomCount值大于等于10，持续5分钟，扩容1台CVM实例。
    /// ```
    /// ScalingAdjustmentType = ChangeInCapacity
    /// if [AvailableGameServerSessions] >= [10] for [5] minutes, then scaling up [1]
    /// ```
    /// 例如2：如果当前AvailableGameServerSessions值大于等于200，持续5分钟，扩容到2台CVM实例。
    /// ```
    /// ScalingAdjustmentType = ExactCapacity
    /// if [AvailableGameServerSessions] >= [200] for [5] minutes, then scaling to [2]
    /// ```
    /// 例如3：如果当前AvailableCustomCount值大于等于400，持续5分钟，扩容20%台CVM实例。
    /// 当前CVM实例数为10台。扩容20%台CVM实例就是增加 10*20%等于2台
    /// ```
    /// ScalingAdjustmentType = PercentChangeInCapacity
    /// if [AvailableGameServerSessions] >= [400] for [5] minutes, then scaling by [currentCVMCount * 20 %]
    /// ```
    /// **备注1**
    /// - | 策略名称（MetricName）                                       | 计算公式                                   | 场景                                        | 场景使用举例                                                 |
    ///   | :----------------------------------------------------------- | :----------------------------------------- | :------------------------------------------ | :----------------------------------------------------------- |
    ///   | CurrentPlayerSessions<br>当前玩家数指标                      | = 当前在线的玩家数                         | CVM随着玩家会话数变化做扩缩容。             | 例如：<br>MetricName: CurrentPlayerSessions<br>ComparisonOperator: '<=' <br>Threshold: 300<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ChangeInCapacity<br>说明：若当前CurrentPlayerSessions小于等于300，持续1分钟，则扩容2台CVM。 |
    ///   | AvailableGameServerSessions<br>可用游戏服务器会话数          | = 可用游戏服务会话数                       | CVM随着可用游戏会话数变化做扩缩容。         | 例如：<br/>MetricName: AvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 5<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableGameServerSessions小于50，持续5分钟，则扩容到2台CVM。 |
    ///   | PercentAvailableGameServerSessions<br>可用游戏服务器会话百分比 | = 空闲游戏会话数 / 所有的游戏会话数 * 100% | CVM随着可用游戏会话数百分比变化做扩缩容。   | 例如：<br/>MetricName: PercentAvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: -30<br/>ScalingAdjustment: PercentChangeInCapacity<br/>说明：若当前PercentAvailableGameServerSessions小于50%，持续1分钟，则缩容当前实例数30%台CVM。 |
    ///   | AvailableCustomCount<br>可用客户自定义数指标                 | = 客户自定义的数                           | CVM随着可用客户自定义数变化做扩缩容。       | 例如：<br/>MetricName: AvailableCustomCount<br/>ComparisonOperator: '>=' <br/>Threshold: 6<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: -1<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableCustomCount大于等于6，持续3分钟，则缩容到1台CVM。 |
    ///   | PercentAvailableCustomCount<br>可用客户自定义数百分比        | = 客户自定义数 / 客户最大自定义数* 100%    | CVM随着可用客户自定义数百分比变化做扩缩容。 | 例如：<br/>MetricName: PercentAvailableCustomCount<br/>ComparisonOperator: '<' <br/>Threshold: 15<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentAvailableCustomCount小于15%，持续3分钟，则扩容1台CVM。 |
    ///   | ActiveInstances<br>活跃实例数指标                            | = 总实例数 - 缩容中的实例数                | CVM随着活跃实例数变化做扩缩容。             | 例如：<br/>MetricName: ActiveInstances<br/>ComparisonOperator: '<' <br/>Threshold: 3<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 3<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前ActiveInstances小于3台，持续1分钟，则扩容保留到3台CVM。 |
    ///   | IdleInstances<br>空闲实例数指标                              | = 未使用的进程数 / 每实例进程数            | CVM随着空闲实例数变化做扩缩容。             | 例如：<br/>MetricName: IdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 2<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前IdleInstances小于2台，持续3分钟，则扩容1台CVM。 |
    ///   | PercentIdleInstances<br>空闲实例百分比                       | = IdleInstances / ActiveInstances * 100%   | CVM随着空闲实例百分比变化做扩缩容。         | 例如：<br/>MetricName: PercentIdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentIdleInstances小于50%，持续3分钟，则扩容1台CVM。 |
    /// **备注2**
    /// **ChangeInCapacity**
    ///     当前CVM实例个数的扩容或缩容的调整值。正值按值扩容，负值按值缩容。
    /// **ExactCapacity**
    ///     把当前CVM实例个数调整为ScalingAdjustment设置的CVM实例数。
    /// **PercentChangeInCapacity**
    ///     按比例增加或减少的百分比。正值按比例扩容，负值按比例缩容；例如，值“-10”将按10%的比例缩容CVM实例。
    @inlinable
    public func putScalingPolicy(_ input: PutScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) -> EventLoopFuture < PutScalingPolicyResponse > {
        self.client.execute(action: "PutScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop)
    }
    
    /// 设置扩缩容策略
    ///
    /// 此接口无法使用，游戏服务器引擎GSE已于6.1正式下架，感谢您的支持
    /// 本接口（PutScalingPolicy）用于设置服务器舰队的动态扩缩容策略。
    /// 通过此接口可以增加或者更新服务器舰队的扩缩容策略。
    /// 服务器舰队可以有多个扩缩容策略，但是只有一个TargetBased基于目标的策略。
    /// ## TargetBased基于目标的策略
    /// TargetBased策略计算的指标是PercentAvailableGameSessions，这个策略用于计算当前服务器舰队应该有多少个CVM实例来支撑和分配游戏会话。
    /// PercentAvailableGameSessions表示服务器舰队的缓冲值；用来计算服务器舰队在当前容量下可以处理的额外玩家会话数量。
    /// 如果使用基于目标的策略，可以按照业务需求设置一个期望的缓冲区大小，GSE的会按照配置的策略来扩容和缩容到这个目标要求的CVM实例数。
    /// 例如：客户可以设置同时承载100个游戏会话的服务器舰队预留10%的缓冲区。GSE会按照这个策略执行时，若服务器舰队的可用容量低于或高于10%的游戏服务器会话时，执行扩缩容动作。
    /// GSE按照策略期望，扩容新CVM实例或缩容未使用的实例，保持在10%左右的缓冲区。
    /// #### 请求参数取值说明
    /// ```
    /// Name取值策略名称，
    /// FleetId取值为选择的服务器舰队ID，
    /// PolicyType取值TargetBased，
    /// MetricName取值PercentAvailableGameSessions，
    /// TargetConfiguration取值为所需的缓冲区值对象，
    /// 其他参数不用传递。
    /// 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
    /// ```
    /// ## RuleBased基于规则的策略
    /// ####  请求参数取值说明
    /// ```
    /// Name取值策略名称，
    /// FleetId取值为选择的服务器舰队ID，
    /// PolicyType取值RuleBased，
    /// MetricName取值（AvailableGameServerSessions，AvailableCustomCount，PercentAvailableCustomCount，ActiveInstances，IdleInstances，CurrentPlayerSessions和PercentIdleInstances）说明见备注1，
    /// 其他参数不用传递。
    /// ComparisonOperator取值为 >,>=,<,<=这4个比较符号中的一个，
    /// Threshold取值为指标MetricName达到的阈值是多少，
    /// EvaluationPeriods取值为指标MetricName达到的阈值持续了多少时间，单位是分钟，
    /// ScalingAdjustmentType取值（ChangeInCapacity，ExactCapacity，PercentChangeInCapacity）说明见备注2
    /// ScalingAdjustment取值为指标MetricName达到的阈值的条件后，扩缩容多少个CVM实例。
    /// 请求成功时，将返回策略名称。扩缩容策略在成功创建立即自动生效。
    /// ```
    /// 规则执行的条件表达式如下所示：
    /// ```
    /// 若 [MetricName] 是 [ComparisonOperator] [Threshold] 持续 [EvaluationPeriods] 分钟, 则 [ScalingAdjustmentType] 调整 [ScalingAdjustment]个实例。
    /// ```
    /// ```
    /// if [MetricName] ComparisonOperator [Threshold] for [EvaluationPeriods] minutes, then scaling up by/to  [ScalingAdjustment]
    /// ```
    /// 例如1：如果当前AvailableCustomCount值大于等于10，持续5分钟，扩容1台CVM实例。
    /// ```
    /// ScalingAdjustmentType = ChangeInCapacity
    /// if [AvailableGameServerSessions] >= [10] for [5] minutes, then scaling up [1]
    /// ```
    /// 例如2：如果当前AvailableGameServerSessions值大于等于200，持续5分钟，扩容到2台CVM实例。
    /// ```
    /// ScalingAdjustmentType = ExactCapacity
    /// if [AvailableGameServerSessions] >= [200] for [5] minutes, then scaling to [2]
    /// ```
    /// 例如3：如果当前AvailableCustomCount值大于等于400，持续5分钟，扩容20%台CVM实例。
    /// 当前CVM实例数为10台。扩容20%台CVM实例就是增加 10*20%等于2台
    /// ```
    /// ScalingAdjustmentType = PercentChangeInCapacity
    /// if [AvailableGameServerSessions] >= [400] for [5] minutes, then scaling by [currentCVMCount * 20 %]
    /// ```
    /// **备注1**
    /// - | 策略名称（MetricName）                                       | 计算公式                                   | 场景                                        | 场景使用举例                                                 |
    ///   | :----------------------------------------------------------- | :----------------------------------------- | :------------------------------------------ | :----------------------------------------------------------- |
    ///   | CurrentPlayerSessions<br>当前玩家数指标                      | = 当前在线的玩家数                         | CVM随着玩家会话数变化做扩缩容。             | 例如：<br>MetricName: CurrentPlayerSessions<br>ComparisonOperator: '<=' <br>Threshold: 300<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ChangeInCapacity<br>说明：若当前CurrentPlayerSessions小于等于300，持续1分钟，则扩容2台CVM。 |
    ///   | AvailableGameServerSessions<br>可用游戏服务器会话数          | = 可用游戏服务会话数                       | CVM随着可用游戏会话数变化做扩缩容。         | 例如：<br/>MetricName: AvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 5<br/>ScalingAdjustment: 2<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableGameServerSessions小于50，持续5分钟，则扩容到2台CVM。 |
    ///   | PercentAvailableGameServerSessions<br>可用游戏服务器会话百分比 | = 空闲游戏会话数 / 所有的游戏会话数 * 100% | CVM随着可用游戏会话数百分比变化做扩缩容。   | 例如：<br/>MetricName: PercentAvailableGameServerSessions<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: -30<br/>ScalingAdjustment: PercentChangeInCapacity<br/>说明：若当前PercentAvailableGameServerSessions小于50%，持续1分钟，则缩容当前实例数30%台CVM。 |
    ///   | AvailableCustomCount<br>可用客户自定义数指标                 | = 客户自定义的数                           | CVM随着可用客户自定义数变化做扩缩容。       | 例如：<br/>MetricName: AvailableCustomCount<br/>ComparisonOperator: '>=' <br/>Threshold: 6<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: -1<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前AvailableCustomCount大于等于6，持续3分钟，则缩容到1台CVM。 |
    ///   | PercentAvailableCustomCount<br>可用客户自定义数百分比        | = 客户自定义数 / 客户最大自定义数* 100%    | CVM随着可用客户自定义数百分比变化做扩缩容。 | 例如：<br/>MetricName: PercentAvailableCustomCount<br/>ComparisonOperator: '<' <br/>Threshold: 15<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentAvailableCustomCount小于15%，持续3分钟，则扩容1台CVM。 |
    ///   | ActiveInstances<br>活跃实例数指标                            | = 总实例数 - 缩容中的实例数                | CVM随着活跃实例数变化做扩缩容。             | 例如：<br/>MetricName: ActiveInstances<br/>ComparisonOperator: '<' <br/>Threshold: 3<br/>EvaluationPeriods: 1<br/>ScalingAdjustment: 3<br/>ScalingAdjustment: ExactCapacity<br/>说明：若当前ActiveInstances小于3台，持续1分钟，则扩容保留到3台CVM。 |
    ///   | IdleInstances<br>空闲实例数指标                              | = 未使用的进程数 / 每实例进程数            | CVM随着空闲实例数变化做扩缩容。             | 例如：<br/>MetricName: IdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 2<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前IdleInstances小于2台，持续3分钟，则扩容1台CVM。 |
    ///   | PercentIdleInstances<br>空闲实例百分比                       | = IdleInstances / ActiveInstances * 100%   | CVM随着空闲实例百分比变化做扩缩容。         | 例如：<br/>MetricName: PercentIdleInstances<br/>ComparisonOperator: '<' <br/>Threshold: 50<br/>EvaluationPeriods: 3<br/>ScalingAdjustment: 1<br/>ScalingAdjustment: ChangeInCapacity<br/>说明：若当前PercentIdleInstances小于50%，持续3分钟，则扩容1台CVM。 |
    /// **备注2**
    /// **ChangeInCapacity**
    ///     当前CVM实例个数的扩容或缩容的调整值。正值按值扩容，负值按值缩容。
    /// **ExactCapacity**
    ///     把当前CVM实例个数调整为ScalingAdjustment设置的CVM实例数。
    /// **PercentChangeInCapacity**
    ///     按比例增加或减少的百分比。正值按比例扩容，负值按比例缩容；例如，值“-10”将按10%的比例缩容CVM实例。
    @inlinable
    public func putScalingPolicy(_ input: PutScalingPolicyRequest, logger: Logger = TCClient.loggingDisabled, on eventLoop: EventLoop? = nil) async throws -> PutScalingPolicyResponse {
        try await self.client.execute(action: "PutScalingPolicy", serviceConfig: self.config, input: input, logger: logger, on: eventLoop).get()
    }
}
