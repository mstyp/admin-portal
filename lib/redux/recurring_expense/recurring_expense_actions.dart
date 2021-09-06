import 'dart:async';
import 'package:built_collection/built_collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:invoiceninja_flutter/data/models/models.dart';
import 'package:invoiceninja_flutter/redux/app/app_actions.dart';
import 'package:invoiceninja_flutter/redux/app/app_state.dart';
import 'package:invoiceninja_flutter/utils/completers.dart';
import 'package:invoiceninja_flutter/utils/localization.dart';
import 'package:invoiceninja_flutter/ui/app/entities/entity_actions_dialog.dart';

class ViewRecurringExpenseList implements PersistUI, StopLoading {
  ViewRecurringExpenseList({
    this.force = false,
  });

  final bool force;
}

class ViewRecurringExpense implements PersistUI, PersistPrefs {
  ViewRecurringExpense({
    @required this.recurringExpenseId,
    this.force = false,
  });

  final String recurringExpenseId;
  final bool force;
}

class EditRecurringExpense implements PersistUI, PersistPrefs {
  EditRecurringExpense(
      {@required this.recurringExpense,
      this.completer,
      this.cancelCompleter,
      this.force = false});

  final ExpenseEntity recurringExpense;
  final Completer completer;
  final Completer cancelCompleter;
  final bool force;
}

class UpdateRecurringExpense implements PersistUI {
  UpdateRecurringExpense(this.recurringExpense);

  final ExpenseEntity recurringExpense;
}

class LoadRecurringExpense {
  LoadRecurringExpense({this.completer, this.recurringExpenseId});

  final Completer completer;
  final String recurringExpenseId;
}

class LoadRecurringExpenseActivity {
  LoadRecurringExpenseActivity({this.completer, this.recurringExpenseId});

  final Completer completer;
  final String recurringExpenseId;
}

class LoadRecurringExpenses {
  LoadRecurringExpenses({this.completer});

  final Completer completer;
}

class LoadRecurringExpenseRequest implements StartLoading {}

class LoadRecurringExpenseFailure implements StopLoading {
  LoadRecurringExpenseFailure(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'LoadRecurringExpenseFailure{error: $error}';
  }
}

class LoadRecurringExpenseSuccess implements StopLoading, PersistData {
  LoadRecurringExpenseSuccess(this.recurringExpense);

  final ExpenseEntity recurringExpense;

  @override
  String toString() {
    return 'LoadRecurringExpenseSuccess{recurringExpense: $recurringExpense}';
  }
}

class LoadRecurringExpensesRequest implements StartLoading {}

class LoadRecurringExpensesFailure implements StopLoading {
  LoadRecurringExpensesFailure(this.error);

  final dynamic error;

  @override
  String toString() {
    return 'LoadRecurringExpensesFailure{error: $error}';
  }
}

class LoadRecurringExpensesSuccess implements StopLoading {
  LoadRecurringExpensesSuccess(this.recurringExpenses);

  final BuiltList<ExpenseEntity> recurringExpenses;

  @override
  String toString() {
    return 'LoadRecurringExpensesSuccess{recurringExpenses: $recurringExpenses}';
  }
}

class SaveRecurringExpenseRequest implements StartSaving {
  SaveRecurringExpenseRequest({this.completer, this.recurringExpense});

  final Completer completer;
  final ExpenseEntity recurringExpense;
}

class SaveRecurringExpenseSuccess
    implements StopSaving, PersistData, PersistUI {
  SaveRecurringExpenseSuccess(this.recurringExpense);

  final ExpenseEntity recurringExpense;
}

class AddRecurringExpenseSuccess implements StopSaving, PersistData, PersistUI {
  AddRecurringExpenseSuccess(this.recurringExpense);

  final ExpenseEntity recurringExpense;
}

class SaveRecurringExpenseFailure implements StopSaving {
  SaveRecurringExpenseFailure(this.error);

  final Object error;
}

class ArchiveRecurringExpensesRequest implements StartSaving {
  ArchiveRecurringExpensesRequest(this.completer, this.recurringExpenseIds);

  final Completer completer;
  final List<String> recurringExpenseIds;
}

class ArchiveRecurringExpensesSuccess implements StopSaving, PersistData {
  ArchiveRecurringExpensesSuccess(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class ArchiveRecurringExpensesFailure implements StopSaving {
  ArchiveRecurringExpensesFailure(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class DeleteRecurringExpensesRequest implements StartSaving {
  DeleteRecurringExpensesRequest(this.completer, this.recurringExpenseIds);

  final Completer completer;
  final List<String> recurringExpenseIds;
}

class DeleteRecurringExpensesSuccess implements StopSaving, PersistData {
  DeleteRecurringExpensesSuccess(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class DeleteRecurringExpensesFailure implements StopSaving {
  DeleteRecurringExpensesFailure(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class RestoreRecurringExpensesRequest implements StartSaving {
  RestoreRecurringExpensesRequest(this.completer, this.recurringExpenseIds);

  final Completer completer;
  final List<String> recurringExpenseIds;
}

class RestoreRecurringExpensesSuccess implements StopSaving, PersistData {
  RestoreRecurringExpensesSuccess(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class RestoreRecurringExpensesFailure implements StopSaving {
  RestoreRecurringExpensesFailure(this.recurringExpenses);

  final List<ExpenseEntity> recurringExpenses;
}

class FilterRecurringExpenses implements PersistUI {
  FilterRecurringExpenses(this.filter);

  final String filter;
}

class SortRecurringExpenses implements PersistUI, PersistPrefs {
  SortRecurringExpenses(this.field);

  final String field;
}

class FilterRecurringExpensesByState implements PersistUI {
  FilterRecurringExpensesByState(this.state);

  final EntityState state;
}

class FilterRecurringExpensesByCustom1 implements PersistUI {
  FilterRecurringExpensesByCustom1(this.value);

  final String value;
}

class FilterRecurringExpensesByCustom2 implements PersistUI {
  FilterRecurringExpensesByCustom2(this.value);

  final String value;
}

class FilterRecurringExpensesByCustom3 implements PersistUI {
  FilterRecurringExpensesByCustom3(this.value);

  final String value;
}

class FilterRecurringExpensesByCustom4 implements PersistUI {
  FilterRecurringExpensesByCustom4(this.value);

  final String value;
}

class StartRecurringExpenseMultiselect {
  StartRecurringExpenseMultiselect();
}

class AddToRecurringExpenseMultiselect {
  AddToRecurringExpenseMultiselect({@required this.entity});

  final BaseEntity entity;
}

class RemoveFromRecurringExpenseMultiselect {
  RemoveFromRecurringExpenseMultiselect({@required this.entity});

  final BaseEntity entity;
}

class ClearRecurringExpenseMultiselect {
  ClearRecurringExpenseMultiselect();
}

class UpdateRecurringExpenseTab implements PersistUI {
  UpdateRecurringExpenseTab({this.tabIndex});

  final int tabIndex;
}

void handleRecurringExpenseAction(BuildContext context,
    List<BaseEntity> recurringExpenses, EntityAction action) {
  if (recurringExpenses.isEmpty) {
    return;
  }

  final store = StoreProvider.of<AppState>(context);
  final localization = AppLocalization.of(context);
  final recurringExpense = recurringExpenses.first as ExpenseEntity;
  final recurringExpenseIds =
      recurringExpenses.map((recurringExpense) => recurringExpense.id).toList();

  switch (action) {
    case EntityAction.edit:
      editEntity(context: context, entity: recurringExpense);
      break;
    case EntityAction.restore:
      store.dispatch(RestoreRecurringExpensesRequest(
          snackBarCompleter<Null>(
              context, localization.restoredRecurringExpense),
          recurringExpenseIds));
      break;
    case EntityAction.archive:
      store.dispatch(ArchiveRecurringExpensesRequest(
          snackBarCompleter<Null>(
              context, localization.archivedRecurringExpense),
          recurringExpenseIds));
      break;
    case EntityAction.delete:
      store.dispatch(DeleteRecurringExpensesRequest(
          snackBarCompleter<Null>(
              context, localization.deletedRecurringExpense),
          recurringExpenseIds));
      break;
    case EntityAction.cloneToExpense:
      createEntity(
        context: context,
        entity: recurringExpense.clone
            .rebuild((b) => b..entityType = EntityType.expense),
      );
      break;
    case EntityAction.cloneToRecurring:
      createEntity(
        context: context,
        entity: recurringExpense.clone
            .rebuild((b) => b..entityType = EntityType.recurringExpense),
      );
      break;
    case EntityAction.toggleMultiselect:
      if (!store.state.recurringExpenseListState.isInMultiselect()) {
        store.dispatch(StartRecurringExpenseMultiselect());
      }

      if (recurringExpenses.isEmpty) {
        break;
      }

      for (final recurringExpense in recurringExpenses) {
        if (!store.state.recurringExpenseListState
            .isSelected(recurringExpense.id)) {
          store.dispatch(
              AddToRecurringExpenseMultiselect(entity: recurringExpense));
        } else {
          store.dispatch(
              RemoveFromRecurringExpenseMultiselect(entity: recurringExpense));
        }
      }
      break;
    case EntityAction.more:
      showEntityActionsDialog(
        entities: [recurringExpense],
      );
      break;
    default:
      print('## ERROR: unhandled action $action in recurring_expense_actions');
      break;
  }
}
