import 'package:flutter/material.dart';
import 'package:meal_app/widgets/main_drawer.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  final Map<String, bool> currentFilters;
  const FilterScreen(this.currentFilters, this.saveFilters, {Key? key})
      : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  var _glutenFree = false;
  var _vegetarian = false;
  var _vegan = false;
  var _lactoseFree = false;

  @override
  initState() {
    _glutenFree = widget.currentFilters['gluten']!;
    _vegetarian = widget.currentFilters['vegetarian']!;
    _vegan = widget.currentFilters['vegan']!;
    _lactoseFree = widget.currentFilters['lactose']!;
    super.initState();
  }

  Widget _buildSwitchListTile(
    String title,
    String description,
    bool currentValue,
    Function updateValue,
  ) {
    return SwitchListTile(
        value: _glutenFree,
        title: const Text('Gluten-free'),
        onChanged: (newVal) {
          setState(() {
            _glutenFree = newVal;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Filter'),
          actions: [
            IconButton(
                onPressed: () => widget.saveFilters(
                      {
                        'gluten': _glutenFree,
                        'lactose': _lactoseFree,
                        'vegan': _vegan,
                        'vegetarian': _vegetarian,
                      },
                    ),
                icon: const Icon(Icons.save))
          ],
        ),
        drawer: const MainDrawer(),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                'Adjust your meal selection',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  _buildSwitchListTile(
                    'Gluten-Free',
                    'Only include gluten-free',
                    _glutenFree,
                    (newVal) {
                      setState(() {
                        _glutenFree = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Lactose-Free',
                    'Only include lactose-free',
                    _lactoseFree,
                    (newVal) {
                      setState(() {
                        _lactoseFree = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegetarian',
                    'Only include vegetarian',
                    _vegetarian,
                    (newVal) {
                      setState(() {
                        _vegetarian = newVal;
                      });
                    },
                  ),
                  _buildSwitchListTile(
                    'Vegan',
                    'Only include vegan',
                    _vegan,
                    (newVal) {
                      setState(() {
                        _vegan = newVal;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
